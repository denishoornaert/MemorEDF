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

    int lpd_fd  = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, 0x3c000000);

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

    printf("operation, threshold, sec, ns, MB, accesses\n");

    unsigned k = 0;

    for (unsigned threshold = 0; threshold < 9; threshold++) {
        // Update thresholds
        (*config).deadlines[0] = threshold;
        (*config).deadlines[1] = threshold;
        (*config).deadlines[2] = threshold;
        (*config).deadlines[3] = threshold;

        for (size_t j = 0; j < 100; j++) {
            struct timespec time1, time2;
            long unsigned sec, ns;

            // read
            clock_gettime(CLOCK_REALTIME, &time1);
            for (unsigned i = ((0<<14)/sizeof(unsigned)); i < (HPM0_SIZE/sizeof(unsigned)); i+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                k = plim[i];
            }
            clock_gettime(CLOCK_REALTIME, &time2);

            sec = diff(time1, time2).tv_sec;
            ns  = diff(time1, time2).tv_nsec;
            printf("read, %u, %lu, %lu, %u, %u\n", threshold, sec, ns, HPM0_SIZE, (HPM0_SIZE/sizeof(unsigned)));
        }
    }

    int unmap_result = 0;
    unmap_result |= unmap(config, LPD0_SIZE);
    unmap_result |= unmap(plim  , HPM0_SIZE);

    return unmap_result;
}
