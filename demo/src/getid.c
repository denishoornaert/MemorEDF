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
    char mode;
    int selected_core;

    mode = argv[1][0];
    sscanf(argv[2], "%i", &selected_core);

    int lpd_fd   = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    u128* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, HPM0_ADDR);

    // Set the period registers (default: 0x002faf08)
    (*config).periods[0] = (selected_core == 0)? 0x00000001 : 0x00000020;
    (*config).periods[1] = (selected_core == 1)? 0x00000001 : 0x00000020;
    (*config).periods[2] = (selected_core == 2)? 0x00000001 : 0x00000020;
    (*config).periods[3] = (selected_core == 3)? 0x00000001 : 0x00000020;
    // Set the deadline registers
    (*config).deadlines[0] = 0x00000000;
    (*config).deadlines[1] = 0x00000000;
    (*config).deadlines[2] = 0x00000000;
    (*config).deadlines[3] = 0x00000000;
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
    (*config).scheduler = tdma;

    // Set the CPU
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(selected_core, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    unsigned k = 0;

    struct timespec time1, time2;
    long unsigned sec, ns;

    (*config).reset = 42;

    if(mode == 'w') {
        printf("Write...\n");
        // Write
        clock_gettime(CLOCK_REALTIME, &time1);
        for (unsigned i = 0; i < (HPM0_SIZE/sizeof(u128)); i+=4) {
            plim[i] = (k++);
        }
        clock_gettime(CLOCK_REALTIME, &time2);
        sec = diff(time1, time2).tv_sec;
        ns  = diff(time1, time2).tv_nsec;
    }
    else if(mode == 'r') {
        printf("Read...\n");
        // Read
        unsigned tmp;
        clock_gettime(CLOCK_REALTIME, &time1);
        for (unsigned i = 0; i < HPM0_SIZE/sizeof(u128); i+=4) {
            tmp = plim[i];
        }
        clock_gettime(CLOCK_REALTIME, &time2);
        sec = diff(time1, time2).tv_sec;
        ns  = diff(time1, time2).tv_nsec;
    }

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
