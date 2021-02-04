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
    unsigned c0_threshold;
    unsigned c1_threshold;
    unsigned c2_threshold;
    unsigned c3_threshold;

    sscanf(argv[1], "%u", &c0_threshold);
    sscanf(argv[2], "%u", &c1_threshold);
    sscanf(argv[3], "%u", &c2_threshold);
    sscanf(argv[4], "%u", &c3_threshold);

    int lpd_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);

    // Set the period registers
    (*config).periods[0] = 0x00000000;
    (*config).periods[1] = 0x00000000;
    (*config).periods[2] = 0x00000000;
    (*config).periods[3] = 0x00000000;
    // Set the deadline registers
    (*config).deadlines[0] = c0_threshold;
    (*config).deadlines[1] = c1_threshold;
    (*config).deadlines[2] = c2_threshold;
    (*config).deadlines[3] = c3_threshold;
    // Set the priorities register
    (*config).priorities = 0x00000000;
    // Set the budget registers
    (*config).budgets[0] = 0x00000000;
    (*config).budgets[1] = 0x00000000;
    (*config).budgets[2] = 0x00000000;
    (*config).budgets[3] = 0x00000000;
    // Set the hyper period register
    (*config).hyperperiod = 0x00000000;
    // Set the scheduler
    (*config).scheduler = gallois;

    int unmap_result = 0;

    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
