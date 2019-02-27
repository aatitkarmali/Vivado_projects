#include "../lib/my_mult.h"

int mult(int a, int b);

int main(){

	int result = 0;

	int act_result = mult(2,3);

	int exp_result = 6;

	if(exp_result != act_result){
		result=1;
	}

	return result;
	
}