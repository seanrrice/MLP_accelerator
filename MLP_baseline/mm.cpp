#include "mm.h"



extern "C" {
void MM(WIDE_DTYPE* AT, WIDE_DTYPE* B, DTYPE* C, WIDE_DTYPE* ABC, int N, int M, int P) {
    // Baseline blocked matrix multiplication
    // AT: M x N
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
    #pragma HLS INTERFACE m_axi port=AT   bundle=gmem depth=64
    #pragma HLS INTERFACE m_axi port=B   bundle=gmem depth=64
    #pragma HLS INTERFACE m_axi port=C   bundle=gmem depth=32
    #pragma HLS INTERFACE m_axi port=ABC bundle=gmem depth=64

    #pragma HLS INTERFACE s_axilite port=AT      bundle=control
    #pragma HLS INTERFACE s_axilite port=B      bundle=control
    #pragma HLS INTERFACE s_axilite port=C      bundle=control
    #pragma HLS INTERFACE s_axilite port=ABC    bundle=control
    #pragma HLS INTERFACE s_axilite port=N      bundle=control
    #pragma HLS INTERFACE s_axilite port=M      bundle=control
    #pragma HLS INTERFACE s_axilite port=P      bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    WIDE_DTYPE AB_block[BLOCK_SIZE];
    WIDE_DTYPE B_line;
    WIDE_DTYPE A_line;
    #pragma HLS ARRAY_PARTITION variable=AB_block type=complete
    

    
    cout << "Entering MM..." << endl;
    // Blocked matmul
    i_BLOCK_loop: for(int ib = 0; ib < N/BLOCK_SIZE; ib ++){
        #pragma HLS PIPELINE off
        j_BLOCK_loop: for(int jb = 0; jb < P/BLOCK_SIZE; jb ++){
            #pragma HLS PIPELINE off
            // Initialize block with bias vector data
            block_init_outer_loop: for(int i=0;i<BLOCK_SIZE;i++){
                #pragma HLS UNROLL
                block_init_inner_loop: for(int j=0;j<BLOCK_SIZE;j++){
                    #pragma HLS UNROLL
                    AB_block[i][j] = C[ib*BLOCK_SIZE+i];
                }
            }
            k_BLOCK_loop: for (int kb = 0; kb < M/BLOCK_SIZE; kb ++){
                #pragma HLS PIPELINE off
                k_loop: for(int k = 0; k < BLOCK_SIZE; k++){
                    B_line = B[((kb*BLOCK_SIZE+k)*P + jb*BLOCK_SIZE) / BLOCK_SIZE];
                    // The input is A transpose, so we need to read the row instead of the column
                    // This increases burst read capability
                    A_line = AT[((kb*BLOCK_SIZE+k)*N + ib*BLOCK_SIZE) / BLOCK_SIZE];
                    i_loop: for(int i=0;i<BLOCK_SIZE;i++){
                        #pragma HLS PIPELINE II=1
                        //DTYPE Atemp = A[(ib*BLOCK_SIZE+i)*M + kb*BLOCK_SIZE + k];
                        j_loop: for(int j=0;j<BLOCK_SIZE;j++){
                            #pragma HLS UNROLL
                            AB_block[i][j] += A_line[i] * B_line[j];
                        }
                    }
                }
            }
            // Copy AB_block to output (transposed: ABC_T[j][i] = AB_block[i][j])
            // Extract column j from AB_block, pack into a WIDE_DTYPE, write as one wide word
            j_output_loop: for(int j=0; j<BLOCK_SIZE; j++){
                #pragma HLS PIPELINE OFF
                WIDE_DTYPE col_vec;
                i_output_loop: for(int i=0; i<BLOCK_SIZE; i++){
                    #pragma HLS PIPELINE OFF
                    col_vec[i] = AB_block[i][j];
                }
                ABC[((jb*BLOCK_SIZE+j)*N + ib*BLOCK_SIZE)/BLOCK_SIZE] = col_vec;
            }
        }
    }
    cout << "Finished initial MM" << endl;
}
}