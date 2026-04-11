#include "mm.h"

typedef int DTYPE;
const int BLOCK_SIZE = 16;

extern "C" {
void MM(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P) {
    // A: N x M
    // B: M x P
    // C: bias vector, length N
    // ABC: N x P

    // #pragma HLS INTERFACE m_axi port=A   bundle=gmem depth=1024
    // #pragma HLS INTERFACE m_axi port=B   bundle=gmem depth=1024
    // #pragma HLS INTERFACE m_axi port=C   bundle=gmem depth=32
    // #pragma HLS INTERFACE m_axi port=ABC bundle=gmem depth=1024
    #pragma HLS INTERFACE m_axi port=A   bundle=gmem depth=802816
    #pragma HLS INTERFACE m_axi port=B   bundle=gmem depth=100352
    #pragma HLS INTERFACE m_axi port=C   bundle=gmem depth=1024
    #pragma HLS INTERFACE m_axi port=ABC bundle=gmem depth=131072

    #pragma HLS INTERFACE s_axilite port=A      bundle=control
    #pragma HLS INTERFACE s_axilite port=B      bundle=control
    #pragma HLS INTERFACE s_axilite port=C      bundle=control
    #pragma HLS INTERFACE s_axilite port=ABC    bundle=control
    #pragma HLS INTERFACE s_axilite port=N      bundle=control
    #pragma HLS INTERFACE s_axilite port=M      bundle=control
    #pragma HLS INTERFACE s_axilite port=P      bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    DTYPE AB_block[BLOCK_SIZE][BLOCK_SIZE];
    DTYPE B_line[BLOCK_SIZE];

    for (int ib = 0; ib < N / BLOCK_SIZE; ib++) {
        #pragma HLS LOOP_TRIPCOUNT min=64 max=64
        #pragma HLS pipeline off
        for (int jb = 0; jb < P / BLOCK_SIZE; jb++) {
            #pragma HLS LOOP_TRIPCOUNT min=8 max=8
            #pragma HLS pipeline off

            // Initialize output tile with bias
            for (int i = 0; i < BLOCK_SIZE; i++) {
                #pragma HLS pipeline off
                for (int j = 0; j < BLOCK_SIZE; j++) {
                    #pragma HLS pipeline off
                    AB_block[i][j] = C[ib * BLOCK_SIZE + i];
                }
            }

            // Accumulate tile products in i-k-j order
            for (int kb = 0; kb < M / BLOCK_SIZE; kb++) {
                #pragma HLS LOOP_TRIPCOUNT min=49 max=49
                #pragma HLS pipeline off
                for (int i = 0; i < BLOCK_SIZE; i++) {
                    #pragma HLS pipeline off
                    for (int k = 0; k < BLOCK_SIZE; k++) {
                        #pragma HLS pipeline off

                        DTYPE Atemp = A[(ib * BLOCK_SIZE + i) * M + (kb * BLOCK_SIZE + k)];

                        // Load one row segment of B for this k
                        for (int j = 0; j < BLOCK_SIZE; j++) {
                            #pragma HLS pipeline off
                            B_line[j] = B[(kb * BLOCK_SIZE + k) * P + (jb * BLOCK_SIZE + j)];
                        }

                        // Update one row of the output tile
                        for (int j = 0; j < BLOCK_SIZE; j++) {
                            #pragma HLS pipeline off
                            AB_block[i][j] += Atemp * B_line[j];
                        }
                    }
                }
            }

            // Write output tile back
            for (int i = 0; i < BLOCK_SIZE; i++) {
                #pragma HLS pipeline off
                for (int j = 0; j < BLOCK_SIZE; j++) {
                    #pragma HLS pipeline off
                    ABC[(ib * BLOCK_SIZE + i) * P + (jb * BLOCK_SIZE + j)] = AB_block[i][j];
                }
            }
        }
    }
}
}