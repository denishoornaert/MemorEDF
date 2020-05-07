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


int main(int argc, char** argv) {
    char mode;
    int cpu;
    unsigned addr;
    unsigned data;

    mode = argv[1][0];
    sscanf(argv[2], "%d", &cpu);
    sscanf(argv[3], "%x", &addr);
    if(mode == 'w') {
        sscanf(argv[4], "%x", &data);
    }

    printf("mode = %c, cpu = %d, addr = %x\n", mode, cpu, addr);

    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(cpu, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    int lpd_fd  = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, hpm_fd, addr);

    // FP chosen so that, whatever the core, transactions are served.
    // Set the period registers (default: 0x002faf08)
    (*config).periods[0] = 0x00000000;
    (*config).periods[1] = 0x00000000;
    (*config).periods[2] = 0x00000000;
    (*config).periods[3] = 0x00000000;
    // Set the deadline registers
    (*config).deadlines[0] = 0x00000000;
    (*config).deadlines[1] = 0x00000000;
    (*config).deadlines[2] = 0x00000000;
    (*config).deadlines[3] = 0x00000000;
    // Set the priorities
    (*config).priorities = 0x0f0e0d0c;
    // Set the scheduler
    (*config).scheduler = fp;

    // Write
    if(mode == 'w') {
        plim[0] = data;
    }
    else if(mode == 'r') {
        printf("%x\n", plim[0]);
    }

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
