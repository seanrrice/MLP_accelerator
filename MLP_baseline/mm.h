#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <chrono>
#include <hls_vector.h>

#ifndef MM_H
#define MM_H


const int BATCH_SIZE = 128;
const int IMAGE_SIZE = 28*28;
const int BLOCK_SIZE = 16; //block size

typedef int DTYPE;
typedef hls::vector<DTYPE, BLOCK_SIZE>  WIDE_DTYPE;

using namespace std;

extern "C"{
void MM(WIDE_DTYPE* A, WIDE_DTYPE* B, DTYPE* C, WIDE_DTYPE* ABC, int N, int M, int P);
}

#endif
