#include "mm.h"

typedef int DTYPE;
const int BLOCK_SIZE = 16; //block size

extern "C" {
void MM(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P) {
    // Baseline blocked matrix multiplication
    // A: N x M
    // B: M x P
    // C: N
    // ABC: N x P
    
    //========================================
    // Original pragmas with original data sizes
    //==========================================

    // #pragma HLS INTERFACE m_axi     port=A   bundle=gmem depth=802816
    // #pragma HLS INTERFACE m_axi     port=B   bundle=gmem depth=100352
    // #pragma HLS INTERFACE m_axi     port=C   bundle=gmem depth=1024
    // #pragma HLS INTERFACE m_axi     port=ABC bundle=gmem depth=131072

    //================================================================
    //Pragmas for new testbench with smaller  to enable cosim to work
    //===============================================================
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


    // Initialize output matrix to zero
    for (int i=0; i < N; i++){
        for(int j= 0; j < P; j++){
            ABC[i * P + j] = C[i];         //This handles the added bias term
        }
    }
    cout << "Entering MM..." << endl;
    // Blocked matmul
    for(int ib = 0; ib < N; ib += BLOCK_SIZE){
        for(int jb = 0; jb < P; jb += BLOCK_SIZE){
            for (int kb = 0; kb < M; kb += BLOCK_SIZE){

                // Compute one C block
                for (int i = ib; i < ib + BLOCK_SIZE && i < N; i++ ){
                    for (int j = jb; j < jb + BLOCK_SIZE && j < P; j++){
                        
                         // Accumulate partial sum for C[i][j]
                         for (int k = kb; k < kb + BLOCK_SIZE && k < M; k++) {
                            ABC[i * P + j] += A[i * M + k] * B[k * P + j];
                         }
                    }
                }
            }
        }
    }
    cout << "Finished initial MM" << endl;
}
}