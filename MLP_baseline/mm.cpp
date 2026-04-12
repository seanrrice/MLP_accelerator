#include "mm.h"
#include <hls_stream.h>

static void readAtTiles(
    WIDE_DTYPE* AT,
    hls::stream<WIDE_DTYPE>& A_stream,
    int N, int M, int P
) {
     // Produce packed A lines in the exact order compute_tiles expects:
    // (ib, jb, kb, k)
    i_BLOCK_loop:
    for (int ib=0; ib < N/BLOCK_SIZE; ib++){
        #pragma HLS LOOP_TRIPCOUNT min=64 max=64
        j_BLOCK_loop:
        for(int jb=0; jb < P/BLOCK_SIZE; jb++){
            #pragma HLS LOOP_TRIPCOUNT min=8 max=8
            k_BLOCK_loop:
            for(int kb = 0; kb < M / BLOCK_SIZE; kb++){
                #pragma HLS LOOP_TRIPCOUNT min=49 max=49
                k_loop:
                for(int k = 0; k < BLOCK_SIZE; k++){
                    #pragma HLS PIPELINE II = 1
                    WIDE_DTYPE A_line = AT[((kb*BLOCK_SIZE + k) * N + ib * BLOCK_SIZE) / BLOCK_SIZE];
                    A_stream.write(A_line);

                }
            }

        }
    }
}

static void readBTiles(
    WIDE_DTYPE* B,
    hls::stream<WIDE_DTYPE>& B_stream,
    int N, int M, int P
) {
    // Produce packed B lines in the exact order compute_tiles expects:
    // (ib, jb, kb, k)
    i_BLOCK_loop:
    for (int ib = 0; ib < N / BLOCK_SIZE; ib++){
        #pragma HLS LOOP_TRIPCOUNT min=64 max=64
        j_BLOCK_loop:
        for(int jb =0; jb < P / BLOCK_SIZE; jb++){
            #pragma HLS LOOP_TRIPCOUNT min=8 max=8
            k_BLOCK_loop:
            for (int kb = 0; kb < M / BLOCK_SIZE; kb ++){
                #pragma HLS LOOP_TRIPCOUNT min=49 max=49
                k_loop:
                for (int k = 0; k < BLOCK_SIZE; k ++){
                    #pragma HLS PIPELINE II = 1 
                    WIDE_DTYPE B_line = B[((kb*BLOCK_SIZE + k) * P + jb * BLOCK_SIZE) / BLOCK_SIZE];
                    B_stream.write(B_line);
                }
            }
        }
    }
}

static void computeTiles(
    hls::stream<WIDE_DTYPE>& A_stream,
    hls::stream<WIDE_DTYPE>& B_stream,
    DTYPE* C,
    hls::stream<WIDE_DTYPE>& AB_stream,
    int N, int M, int P
) {
    WIDE_DTYPE AB_block[BLOCK_SIZE];
    #pragma HLS ARRAY_PARTITION variable= AB_block complete dim = 1

    i_BLOCK_loop:
    for (int ib = 0; ib < N / BLOCK_SIZE; ib++) {
        #pragma HLS LOOP_TRIPCOUNT min=64 max=64
        j_BLOCK_loop:
        for (int jb = 0; jb < P / BLOCK_SIZE; jb++) {
            #pragma HLS LOOP_TRIPCOUNT min=8 max=8
            //Initialize local output tile with row bias
            block_init_outer_loop:
            for (int i = 0; i < BLOCK_SIZE; i++){
                #pragma HLS UNROLL
                for (int j = 0; j < BLOCK_SIZE; j++){
                    #pragma HLS UNROLL
                    AB_block[i][j] = C[ib*BLOCK_SIZE + i];
                }
            }

            // Consume one A_line and one B_line per (kb, k)
            k_BLOCK_loop:
            for (int kb = 0; kb < M/BLOCK_SIZE; kb++){
                #pragma HLS LOOP_TRIPCOUNT min=49 max=49    
                k_loop:
                for(int k = 0; k < BLOCK_SIZE; k++){
                    WIDE_DTYPE A_line = A_stream.read();
                    WIDE_DTYPE B_line = B_stream.read();

                    i_loop:
                    for (int i = 0; i < BLOCK_SIZE; i++){
                        #pragma HLS PIPELINE II = 1
                        j_loop:
                        for (int j = 0; j < BLOCK_SIZE; j++){
                            #pragma HLS UNROLL
                            AB_block[i][j] += A_line[i] * B_line[j];
                        }
                    }

                }
            }
            // Pack each column of AB_block and stream it out
            j_output_loop:
            for (int j = 0; j < BLOCK_SIZE; j++){
                #pragma HLS PIPELINE II =1
                WIDE_DTYPE col_vec;

                i_output_loop:
                for (int i=0; i<BLOCK_SIZE; i++){
                    #pragma HLS UNROLL
                    col_vec[i] = AB_block[i][j];
                }

                AB_stream.write(col_vec);
            }
        }
    }

}

static void writeTiles(
    hls::stream<WIDE_DTYPE>& AB_stream,
    WIDE_DTYPE* ABC,
    int N, int P
) {
    i_BLOCK_loop:
    for (int ib = 0; ib < N / BLOCK_SIZE; ib++) {
        #pragma HLS LOOP_TRIPCOUNT min=64 max=64
        j_BLOCK_loop:
        for (int jb = 0; jb < P / BLOCK_SIZE; jb++) {
            #pragma HLS LOOP_TRIPCOUNT min=8 max=8
            j_output_loop:
            for (int j = 0; j < BLOCK_SIZE; j++) {
                #pragma HLS PIPELINE II = 1
                WIDE_DTYPE col_vec = AB_stream.read();
                ABC[((jb * BLOCK_SIZE +j) * N + ib * BLOCK_SIZE)/ BLOCK_SIZE] = col_vec;
            }
        }
    }
}

extern "C" {
void MM(WIDE_DTYPE* AT, WIDE_DTYPE* B, DTYPE* C, WIDE_DTYPE* ABC, int N, int M, int P) {
    // Baseline blocked matrix multiplication
    // AT: M x N
    // B: M x P
    // C: length N bias
    // ABC: packed output written column-wise within each tile (N x P)
    
    //========================================
    // Original pragmas with original data sizes
    //==========================================

    
    #pragma HLS INTERFACE m_axi port=AT   bundle=gmem depth=802816
    #pragma HLS INTERFACE m_axi port=B   bundle=gmem depth=100352
    #pragma HLS INTERFACE m_axi port=C   bundle=gmem depth=1024
    #pragma HLS INTERFACE m_axi port=ABC bundle=gmem depth=131072

    //================================================================
    //Pragmas for new testbench with smaller  to enable cosim to work
    //===============================================================
    // #pragma HLS INTERFACE m_axi port=AT  bundle=gmem0 depth=64
    // #pragma HLS INTERFACE m_axi port=B   bundle=gmem1 depth=64
    // #pragma HLS INTERFACE m_axi port=C   bundle=gmem2 depth=32
    // #pragma HLS INTERFACE m_axi port=ABC bundle=gmem3 depth=64

    #pragma HLS INTERFACE s_axilite port=AT     bundle=control
    #pragma HLS INTERFACE s_axilite port=B      bundle=control
    #pragma HLS INTERFACE s_axilite port=C      bundle=control
    #pragma HLS INTERFACE s_axilite port=ABC    bundle=control
    #pragma HLS INTERFACE s_axilite port=N      bundle=control
    #pragma HLS INTERFACE s_axilite port=M      bundle=control
    #pragma HLS INTERFACE s_axilite port=P      bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    hls::stream<WIDE_DTYPE> A_stream("A_stream");
    hls::stream<WIDE_DTYPE> B_stream("B_stream");
    hls::stream<WIDE_DTYPE> AB_stream("AB_stream");

    #pragma HLS STREAM variable=A_stream depth = 32
    #pragma HLS STREAM variable=B_stream depth = 32
    #pragma HLS STREAM variable=AB_stream depth = 32

    #pragma HLS DATAFLOW
        
    readAtTiles(AT, A_stream, N, M, P); 
    readBTiles(B, B_stream, N, M, P);
    computeTiles(A_stream, B_stream, C, AB_stream, N, M, P);
    writeTiles(AB_stream, ABC, N, P);
}
}