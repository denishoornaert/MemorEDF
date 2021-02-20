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

#include "../include/config.h"
#include "../include/tool.h"

#define PAGE_SIZE 4*1024
#define PAGE_SHIFT 12
#define PAGE_MASK 0x0000000000000fff

int main(int argc, char** argv) {
    char mode;
    int cpu;
    long unsigned addr;
    unsigned data;

    mode = argv[1][0];
    sscanf(argv[2], "%d", &cpu);
    sscanf(argv[3], "%lx", &addr);
    if(mode == 'w') {
        sscanf(argv[4], "%x", &data);
    }

    printf("mode = %c, cpu = %d, addr = %lx\n", mode, cpu, addr);

    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(cpu, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    int lpd_fd  = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config;// = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* plim = mmap((void*)0, PAGE_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, ((~PAGE_MASK)&addr));

    printf("After mmaps\n");

//    // FP chosen so that, whatever the core, transactions are served.
//    // Set the period registers (default: 0x002faf08)
//    (*config).periods[0] = 0x00000000;
//    (*config).periods[1] = 0x00000000;
//    (*config).periods[2] = 0x00000000;
//    (*config).periods[3] = 0x00000000;
//    // Set the deadline registers
//    (*config).deadlines[0] = 0x00000000;
//    (*config).deadlines[1] = 0x00000000;
//    (*config).deadlines[2] = 0x00000000;
//    (*config).deadlines[3] = 0x00000000;
//    // Set the priorities register
//    (*config).priorities = 0x0f0e0d0c;
//    // Set the budget registers
//    (*config).budgets[0] = 0x00000000;

//    (*config).budgets[1] = 0x00000000;
//    (*config).budgets[2] = 0x00000000;
//    (*config).budgets[3] = 0x00000000;
//    // Set the hyper period register
//    (*config).hyperperiod = 0x00000000;
//    // Set the scheduler
//    (*config).scheduler = fp;

    printf("After SchIm config\n");

    long unsigned target = (PAGE_MASK & addr)/sizeof(unsigned);
    printf("addr = %lx\n", ((~PAGE_MASK) & addr));
    printf("target = %lx\n", target);
    // Write
    if(mode == 'w') {
        plim[target] = data;
    }
    else if(mode == 'r') {
        printf("%x\n", plim[target]);
    }

    int unmap_result = 0;
    unmap_result |= unmap(plim  , PAGE_SIZE);
    //unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
