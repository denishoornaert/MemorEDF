#define _GNU_SOURCE
#include <sched.h>
#include <stdio.h>


int main( int argc, char **argv){
	
	int core = (int)(argv[1][0] - '0');
	if (argc < 2){
		printf("Not enough arguments");
		return 1;
	}
	printf("argc: %d   core: %d  argv[1][0] %s", argc, core, argv[1]);
	printf("Printing from core %d \n", core);
	cpu_set_t  mask;
	CPU_ZERO(&mask);
	CPU_SET(core, &mask);
	if (sched_setaffinity(0, sizeof(mask), &mask) == -1 ){
		printf("sched_setaffinity failed");
		return 1;
	}
   		
	while(1){
		printf("Printing from core %d \n", core);
	}

}
