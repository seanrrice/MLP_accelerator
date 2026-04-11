#include "mm.h"

// ABC[N*P] = A[N*M] . B[M*P] + C[N]
void mm_sw(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P) {
    //write your code here for three loops of computing ABC[N*P]
    for (int i = 0; i < N; i++){
        for(int j = 0; j < P; j++){
            DTYPE sum = 0;
            for (int k = 0; k < M; k++){
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

//=======================================
//Original test bench
// ======================================

const int N = 1024;
const int M = 784;
const int P = 128;

int main()
{
	DTYPE* y1 = new DTYPE[N*P];
    DTYPE* w1 = new DTYPE[N*M];
    DTYPE* in = new DTYPE[M*P];
    DTYPE* b1 = new DTYPE[N];

	cout << "\n---Testing results----------------------------------\n";

    readImages("mnist_images_int.txt", in);
    readWeightsAndBiases("weights_layer1.txt", w1, b1, 1024, IMAGE_SIZE);

    // Instantiate your function here
    cout << "About to call MM..." << endl;
    MM(w1, in, b1, y1, N, M, P);
    cout << "Returned from MM." << endl;
    
    ofstream oFile("first_layer_actual_output.txt");
	for (int i = 0; i < N*P; i++)
		oFile << y1[i] << endl;
    oFile.close();

    cout << "Comparing against output data " << endl;
    if (system("diff -w first_layer_actual_output.txt first_layer_golden_output.txt")) {
        cout << "*******************************************" << endl;
        cout << "FAIL: Output DOES NOT match the golden output" << endl;
        cout << "*******************************************" << endl;
        return 1;
    } else {
        cout << "*******************************************" << endl;
        cout << "PASS: The output matches the golden output!" << endl;
        cout << "*******************************************" << endl;
        return 0;
    }
 
}

//===========================================================================
//Modified Testbench to enable cosim to work
//=========================================================================

// void mm_sw_cosim(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P) {
//     for (int i = 0; i < N; i++) {
//         for (int j = 0; j < P; j++) {
//             DTYPE sum = 0;
//             for (int k = 0; k < M; k++) {
//                 sum += A[i * M + k] * B[k * P + j];
//             }
//             ABC[i * P + j] = sum + C[i];
//         }
//     }
// }

// const int N = 32;
// const int M = 32;
// const int P = 32;

// int main() {
//     DTYPE* y_hw = new DTYPE[N * P];
//     DTYPE* y_sw = new DTYPE[N * P];
//     DTYPE* A = new DTYPE[N * M];
//     DTYPE* B = new DTYPE[M * P];
//     DTYPE* C = new DTYPE[N];

//     for (int i = 0; i < N * M; i++) A[i] = (i % 5) + 1;
//     for (int i = 0; i < M * P; i++) B[i] = (i % 7) + 1;
//     for (int i = 0; i < N; i++) C[i] = i % 3;

//     mm_sw_cosim(A, B, C, y_sw, N, M, P);
//     MM(A, B, C, y_hw, N, M, P);

//     bool match = true;
//     for (int i = 0; i < N * P; i++) {
//         if (y_hw[i] != y_sw[i]) {
//             cout << "Mismatch at " << i
//                  << " hw=" << y_hw[i]
//                  << " sw=" << y_sw[i] << endl;
//             match = false;
//             break;
//         }
//     }

//     if (match) {
//         cout << "PASS" << endl;
//         return 0;
//     } else {
//         cout << "FAIL" << endl;
//         return 1;
//     }
// }