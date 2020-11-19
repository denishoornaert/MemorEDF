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
    unsigned active_slots;
    unsigned active_cores;
    unsigned cua_slot_size;
    unsigned cic_slot_size;

    sscanf(argv[1], "%x", &cua_slot_size);
    sscanf(argv[2], "%x", &cic_slot_size);

    int lpd_fd   = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, HPM0_ADDR);

    // Set the period registers (default: 0x002faf08)
    (*config).periods[0] = cua_slot_size;
    (*config).periods[1] = cic_slot_size;
    (*config).periods[2] = cic_slot_size;
    (*config).periods[3] = cic_slot_size;
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

    for (unsigned i = 0; i < 4; i++) {
        printf("Period[%u] = %x\n", i, (*config).periods[i]);
    }

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
