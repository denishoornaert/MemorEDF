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
    int hpm_fd  = open_fd();

    unsigned* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, HPM0_ADDR);

    // Set the CPU
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    printf("All children started\n");
    printf("operation, active cores, active slots, seconds, nanoseconds, bytes, iterations, slot sizes\n");

    unsigned k = 0;

    for (size_t j = 0; j < 100; j++) {
        struct timespec time1, time2;
        long unsigned sec, ns;

//        // Write
//        clock_gettime(CLOCK_REALTIME, &time1);
//        for (unsigned i = ((0<<14)/sizeof(unsigned)); i < (HPM0_SIZE/sizeof(unsigned)); i+=(64*KB/sizeof(unsigned))) {
//            for (unsigned j = 0; j < (16*KB/sizeof(unsigned)); j+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
//                k = plim[i+j];
//            }
//        }
//        clock_gettime(CLOCK_REALTIME, &time2);
//        sec = diff(time1, time2).tv_sec;
//        ns  = diff(time1, time2).tv_nsec;
//        printf("write, %lu, %lu, %u, %u, %u\n", sec, ns, HPM0_SIZE, (HPM0_SIZE/sizeof(unsigned)));

        // Read
        unsigned tmp;
        clock_gettime(CLOCK_REALTIME, &time1);
        for (unsigned i = ((0<<14)/sizeof(unsigned)); i < (HPM0_SIZE/sizeof(unsigned)); i+=(64*KB/sizeof(unsigned))) {
            for (unsigned j = 0; j < (16*KB/sizeof(unsigned)); j+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                k = plim[i+j];
            }
        }
        clock_gettime(CLOCK_REALTIME, &time2);
        sec = diff(time1, time2).tv_sec;
        ns  = diff(time1, time2).tv_nsec;
        printf("write, %lu, %lu, %u, %u, %u\n", sec, ns, HPM0_SIZE, (HPM0_SIZE/sizeof(unsigned)));
    }

    printf("Finish\n");

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);

    return unmap_result;
}
