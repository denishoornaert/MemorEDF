#define _GNU_SOURCE
#include <sched.h>
#include <stdio.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <time.h>
#include <unistd.h>
#include <sys/wait.h>

#include "../include/config.h"
#include "../include/tool.h"


int main(int argc, char** argv) {
    long unsigned target;
    char mode;

    sscanf(argv[1], "%lx", &target);
    sscanf(argv[2], "%c", &mode);

    int hpm_fd  = open_fd();

    unsigned* plim   = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, target);

    // Set the CPU
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    unsigned k = 0;
    unsigned tmp;

    if(mode == 'r') {
        while(1) {
            for (unsigned i = 0; i < (HPM0_SIZE/sizeof(unsigned)); i+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                tmp = plim[i];
            }
        }
    }
    else if(mode == 'w') {
        while(1) {
            for (unsigned i = 0; i < (HPM0_SIZE/sizeof(unsigned)); i+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                plim[i] = (k++);
            }
        }
    }

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);

    return unmap_result;
}
