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
    int cpu = 2;
    int active_slots;
    struct timespec time1, time2;
    long unsigned sec, ns;

    sscanf(argv[1], "%d", &active_slots);

    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(cpu, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    int lpd_fd   = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, hpm_fd, HPM0_ADDR);

    // Set the period registers (default: 0x002faf08)
    (*config).periods[0] = (active_slots >= 1)? 0x002faf08 : 0x00000000;
    (*config).periods[1] = (active_slots >= 2)? 0x002faf08 : 0x00000000;
    (*config).periods[2] = 0x00000100;
    (*config).periods[3] = (active_slots >= 3)? 0x002faf08 : 0x00000000;
    // Set the deadline registers
    (*config).deadlines[0] = 0x00000000;
    (*config).deadlines[1] = 0x00000000;
    (*config).deadlines[2] = 0x00000000;
    (*config).deadlines[3] = 0x00000000;
    // Set the priorities
    (*config).priorities = 0x00000000;
    // Set the scheduler
    (*config).scheduler = tdma;

    // Write
    printf("Write\n");
    clock_gettime(CLOCK_REALTIME, &time1);
    for (unsigned i = 0; i < HPM0_SIZE/sizeof(unsigned); i++) {
        plim[i] = i;
    }
    clock_gettime(CLOCK_REALTIME, &time2);
    sec = diff(time1,time2).tv_sec;
    ns  = diff(time1,time2).tv_nsec;
    printf("Done in %lu:%lu\n", sec, ns);

    // Read
    printf("Read\n");
    unsigned tmp;
    clock_gettime(CLOCK_REALTIME, &time1);
    for (unsigned i = 0; i < HPM0_SIZE/sizeof(unsigned); i++) {
        tmp = plim[i];
    }
    clock_gettime(CLOCK_REALTIME, &time2);
    sec = diff(time1,time2).tv_sec;
    ns  = diff(time1,time2).tv_nsec;
    printf("Done in %lu:%lu\n", sec, ns);

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
