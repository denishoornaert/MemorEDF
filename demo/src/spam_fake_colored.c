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
    unsigned samples;

    sscanf(argv[1], "%lx", &target);
    sscanf(argv[2], "%c", &mode);
    sscanf(argv[3], "%u", &samples);

    int hpm_fd  = open_fd();

    unsigned* plim   = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, target);

    // Set the CPU
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    printf("operation, contention, priorities, seconds, nanoseconds, bytes\n");

    unsigned k = 0;
    unsigned tmp;

    if(mode == 'r') {
        for (size_t j = 0; j < samples; j++) {
            struct timespec time1, time2;
            long unsigned sec, ns;

            clock_gettime(CLOCK_REALTIME, &time1);
            for (unsigned i = 0; i < (HPM0_SIZE/sizeof(unsigned)); i+=(64*KB/sizeof(unsigned))) {
                for (unsigned j = 0; j < (16*KB/sizeof(unsigned)); j+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                    tmp = plim[i+j];
                }
            }
            clock_gettime(CLOCK_REALTIME, &time2);

            sec = diff(time1, time2).tv_sec;
            ns  = diff(time1, time2).tv_nsec;

            printf("read, %lu, %lu, %u\n", sec, ns, (HPM0_SIZE/MAX_CORE));
        }
    }
    else if(mode == 'w') {
        for (size_t j = 0; j < samples; j++) {
            struct timespec time1, time2;
            long unsigned sec, ns;

            clock_gettime(CLOCK_REALTIME, &time1);
            for (unsigned i = 0; i < (HPM0_SIZE/sizeof(unsigned)); i+=(64*KB/sizeof(unsigned))) {
                for (unsigned j = 0; j < (16*KB/sizeof(unsigned)); j+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                    plim[i+j] = (k++);
                }
            }
            clock_gettime(CLOCK_REALTIME, &time2);

            sec = diff(time1, time2).tv_sec;
            ns  = diff(time1, time2).tv_nsec;

            printf("write, %lu, %lu, %u\n", sec, ns, (HPM0_SIZE/MAX_CORE));
        }
    }

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);

    return unmap_result;
}
