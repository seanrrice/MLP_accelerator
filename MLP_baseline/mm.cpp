#include "mm.h"

typedef int DTYPE;
const int BLOCK_SIZE = 16;

extern "C" {
void MM(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P) {
    // A: N x M
    // B: M x P
    // C: bias vector, length N
    // ABC: N x P

    #pragma HLS INTERFACE m_axi port=A   bundle=gmem depth=1024
    #pragma HLS INTERFACE m_axi port=B   bundle=gmem depth=1024
    #pragma HLS INTERFACE m_axi port=C   bundle=gmem depth=32
    #pragma HLS INTERFACE m_axi port=ABC bundle=gmem depth=1024

    #pragma HLS INTERFACE s_axilite port=A      bundle=control
    #pragma HLS INTERFACE s_axilite port=B      bundle=control
    #pragma HLS INTERFACE s_axilite port=C      bundle=control
    #pragma HLS INTERFACE s_axilite port=ABC    bundle=control
    #pragma HLS INTERFACE s_axilite port=N      bundle=control
    #pragma HLS INTERFACE s_axilite port=M      bundle=control
    #pragma HLS INTERFACE s_axilite port=P      bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DTYPE AB_block[BLOCK_SIZE][BLOCK_SIZE];

    for (int ib = 0; ib < N / BLOCK_SIZE; ib++) {
        #pragma HLS PIPELINE off
        for (int jb = 0; jb < P / BLOCK_SIZE; jb++) {
            #pragma HLS PIPELINE off

            // Initialize output tile with bias
            for (int i = 0; i < BLOCK_SIZE; i++) {
                #pragma HLS PIPELINE off
                for (int j = 0; j < BLOCK_SIZE; j++) {
                    AB_block[i][j] = C[ib * BLOCK_SIZE + i];
                }
            }

            // Accumulate tile products in k-j-i order
            for (int kb = 0; kb < M / BLOCK_SIZE; kb++) {
                #pragma HLS PIPELINE off
                for (int k = 0; k < BLOCK_SIZE; k++) {
                    #pragma HLS PIPELINE off
                    for (int j = 0; j < BLOCK_SIZE; j++) {
                        #pragma HLS PIPELINE off
                        DTYPE Btemp = B[(kb * BLOCK_SIZE + k) * P + (jb * BLOCK_SIZE + j)];

                        for (int i = 0; i < BLOCK_SIZE; i++) {
                            #pragma HLS PIPELINE off
                            DTYPE Atemp = A[(ib * BLOCK_SIZE + i) * M + (kb * BLOCK_SIZE + k)];
                            AB_block[i][j] += Atemp * Btemp;
                        }
                    }
                }
            }

            // Write output tile back
            for (int i = 0; i < BLOCK_SIZE; i++) {
                #pragma HLS PIPELINE off
                for (int j = 0; j < BLOCK_SIZE; j++) {
                    ABC[(ib * BLOCK_SIZE + i) * P + (jb * BLOCK_SIZE + j)] = AB_block[i][j];
                }
            }
        }
    }
}
}