#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <chrono>

#ifndef MM_H
#define MM_H

typedef int DTYPE;
const int BATCH_SIZE = 128;
const int IMAGE_SIZE = 28*28;
const int BLOCK_SIZE = 16; //block size

using namespace std;

extern "C"{
void MM(DTYPE* A, DTYPE* B, DTYPE* C, DTYPE* ABC, int N, int M, int P);
}

#endif
