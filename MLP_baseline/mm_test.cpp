#include "mm.h"

// Golden reference: standard matrix multiply (no transpose, no wide bus)
void mm_sw_cosim(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < P; j++) {
            DTYPE sum = 0;
            for (int k = 0; k < M; k++) {
                sum += A[i * M + k] * B[k * P + j];
            }
            ABC[i * P + j] = sum + C[i];
        }
    }
}

void readWeightsAndBiases(const string& wfilename, DTYPE* weight, DTYPE* bias, int H, int W) {
    cout << "\tReading Weights and Biases from file: " << wfilename << endl;
    ifstream wFile(wfilename);
    if (!wFile.is_open()) {
        cerr << "\t\tError opening file: " << wfilename << endl;
    }
    if (wFile.eof()) {
        cerr << "\t\tError: Reached end of file unexpectedly!" << endl;
        exit(EXIT_FAILURE);
    }

    char ch;
    char buffer[50];
    int weightIndex = 0;
    int biasIndex = 0;
    int bufIndex = 0;
    bool readingWeights = false;
    bool readingBiases = false;
    bool isNegative = false;

    while (wFile.get(ch)) {
        if (ch == 'W' && wFile.peek() == 'e') {
            readingWeights = true;
            readingBiases = false;
            wFile.ignore(100, ']');
        }
        else if (ch == 'b' && wFile.peek() == 'i') {
            readingWeights = false;
            readingBiases = true;
            wFile.ignore(100, ']');
        }

        if ((isdigit(ch) || ch == '.' || ch == '-') && bufIndex < 50) {
            if (ch == '-') {
                isNegative = true;
            }
            else {
                buffer[bufIndex++] = ch;
            }
        }
        else if (bufIndex > 0) {
            buffer[bufIndex] = '\0';
            float value = atof(buffer);
            if (isNegative)
                value = -value;

            if (readingWeights && weightIndex < H*W) {
                weight[weightIndex++] = value;
            }
            else if (readingBiases && biasIndex < H) {
                bias[biasIndex++] = value;
            }

            bufIndex = 0;
            isNegative = false;
        }
    }
    cout << "number of read values for weights: " << weightIndex << endl;
    cout << "number of read values for biases: " << biasIndex << endl;
    wFile.close();
}

void readImages(const string& imgfilename, DTYPE* data) {
    cout << "\tReading input images from file: " << imgfilename << endl;
    ifstream imgFile(imgfilename);
    if (!imgFile.is_open()) {
        cerr << "\t\tError opening file: " << imgfilename << endl;
    }
    if (imgFile.eof()) {
        cerr << "\t\tError: Reached end of file unexpectedly!" << endl;
        exit(EXIT_FAILURE);
    }

    int value;
    for (int j = 0; j < BATCH_SIZE; j++) {
        for (int i = 0; i < IMAGE_SIZE; i++) {
            imgFile >> value;
            data[i*BATCH_SIZE+j] = value / 256;
        }
    }

    imgFile.close();
}

//===========================================================================
// Cosim testbench for wide bus + transposed A kernel
//===========================================================================

const int N = 1024;
const int M = 784;
const int P = 128;

int main() {
    // ---- Scalar arrays for golden reference ----
    DTYPE* A    = new DTYPE[N * M];
    DTYPE* B    = new DTYPE[M * P];
    DTYPE* C    = new DTYPE[N];
    DTYPE* y_sw = new DTYPE[N * P];

    // ---- Wide arrays for HW kernel ----
    // AT (A transposed) is M x N, packed into M*N/BLOCK_SIZE wide words
    // B  is M x P, packed into M*P/BLOCK_SIZE wide words
    // ABC output is transposed (P x N), packed into P*N/BLOCK_SIZE wide words
    WIDE_DTYPE* AT_wide  = new WIDE_DTYPE[M * N / BLOCK_SIZE];
    WIDE_DTYPE* B_wide   = new WIDE_DTYPE[M * P / BLOCK_SIZE];
    WIDE_DTYPE* ABC_wide = new WIDE_DTYPE[P * N / BLOCK_SIZE];

    // ---- Initialize input data ----
    for (int i = 0; i < N * M; i++) A[i] = (i % 5) + 1;
    for (int i = 0; i < M * P; i++) B[i] = (i % 7) + 1;
    for (int i = 0; i < N; i++)     C[i] = i % 3;

    // ---- Compute golden reference (standard matmul) ----
    mm_sw_cosim(A, B, C, y_sw, N, M, P);

    // ---- Pre-transpose A -> AT and pack into WIDE_DTYPE ----
    // A is N x M (row-major): A[i][k] = A[i*M + k]
    // AT is M x N (row-major): AT[k][i] = A[i][k]
    // Each row of AT (length N) is packed into N/BLOCK_SIZE wide words
    for (int k = 0; k < M; k++) {
        for (int i = 0; i < N; i++) {
            int wide_idx = (k * N + i) / BLOCK_SIZE;
            int elem_idx = i % BLOCK_SIZE;
            AT_wide[wide_idx][elem_idx] = A[i * M + k];
        }
    }

    // ---- Pack B into WIDE_DTYPE ----
    // B is M x P (row-major): B[k][j] = B[k*P + j]
    // Each row of B (length P) is packed into P/BLOCK_SIZE wide words
    for (int k = 0; k < M; k++) {
        for (int j = 0; j < P; j++) {
            int wide_idx = (k * P + j) / BLOCK_SIZE;
            int elem_idx = j % BLOCK_SIZE;
            B_wide[wide_idx][elem_idx] = B[k * P + j];
        }
    }

    // ---- Initialize output to zero ----
    for (int i = 0; i < P * N / BLOCK_SIZE; i++) {
        for (int e = 0; e < BLOCK_SIZE; e++) {
            ABC_wide[i][e] = 0;
        }
    }

    // ---- Call HW kernel ----
    cout << "Calling MM kernel..." << endl;
    MM(AT_wide, B_wide, C, ABC_wide, N, M, P);
    cout << "Returned from MM kernel." << endl;

    // ---- Unpack and un-transpose output for comparison ----
    // HW output is transposed: ABC_T is P x N (row-major)
    // ABC_T[j][i] = original ABC[i][j]
    // Each row of ABC_T (length N) is packed into N/BLOCK_SIZE wide words
    bool match = true;
    int mismatches = 0;
    for (int j = 0; j < P; j++) {
        for (int i = 0; i < N; i++) {
            int wide_idx = (j * N + i) / BLOCK_SIZE;
            int elem_idx = i % BLOCK_SIZE;
            DTYPE hw_val = ABC_wide[wide_idx][elem_idx];
            DTYPE sw_val = y_sw[i * P + j];  // golden: ABC[i][j]
            if (hw_val != sw_val) {
                if (mismatches < 10) {  // Print first 10 mismatches
                    cout << "Mismatch at [" << i << "][" << j << "]"
                         << " hw=" << hw_val << " sw=" << sw_val << endl;
                }
                match = false;
                mismatches++;
            }
        }
    }

    if (match) {
        cout << "*******************************************" << endl;
        cout << "PASS: The output matches the golden output!" << endl;
        cout << "*******************************************" << endl;
    } else {
        cout << "*******************************************" << endl;
        cout << "FAIL: " << mismatches << " mismatches found" << endl;
        cout << "*******************************************" << endl;
    }

    delete[] A;
    delete[] B;
    delete[] C;
    delete[] y_sw;
    delete[] AT_wide;
    delete[] B_wide;
    delete[] ABC_wide;

    return match ? 0 : 1;
}
