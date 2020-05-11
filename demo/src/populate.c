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
    size_t address, size;

    sscanf(argv[1], "%lx", &address);
    sscanf(argv[2], "%lu", &size);

    int lpd_fd   = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* mem    = mmap((void*)0, size, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, hpm_fd, address);

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
    // Set the priorities register
    (*config).priorities = 0x0f0e0d0c;
    // Set the budget registers
    (*config).budgets[0] = 0x00000000;
    (*config).budgets[1] = 0x00000000;
    (*config).budgets[2] = 0x00000000;
    (*config).budgets[3] = 0x00000000;
    // Set the hyper period register
    (*config).hyperperiod = 0x00000000;
    // Set the scheduler
    (*config).scheduler = fp;

    // BRAM populate
    for (unsigned i = 0; i < size/sizeof(unsigned); i++) {
        mem[i] = i;
    }

    int unmap_result = 0;
    unmap_result |= unmap(mem   , size);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
