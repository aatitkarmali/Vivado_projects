#include "../lib/my_mult.h"

int mult(int a, int b){
#pragma HLS INTERFACE s_axilite port=return

	return a*b;
}