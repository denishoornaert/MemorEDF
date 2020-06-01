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


unsigned loop_activated = 1;
unsigned counter = 0;
int current_cpu = 0;

void handler() {
    counter++;
}

void finish() {
    loop_activated = 0;
}

int main(int argc, char** argv) {
    unsigned active_cores;
    unsigned cua_budget;
    unsigned cic_budget;

    sscanf(argv[1], "%u", &active_cores);
    sscanf(argv[2], "%u", &cua_budget);
    sscanf(argv[3], "%u", &cic_budget);

    pid_t child[active_cores];
    int status[active_cores];

    int lpd_fd   = open_fd();
    int hpm_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    u128* plim = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, hpm_fd, HPM0_ADDR);

    pid_t parent = getpid();
    signal(SIGUSR1, handler);

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
    (*config).budgets[0] = cua_budget;
    (*config).budgets[1] = (active_cores >= 1)? cic_budget : 0x00000000;
    (*config).budgets[2] = (active_cores >= 2)? cic_budget : 0x00000000;
    (*config).budgets[3] = (active_cores >= 3)? cic_budget : 0x00000000;
    // Set the hyper period register
    (*config).hyperperiod = 0x00000000;
    // Set the scheduler
    (*config).scheduler = mg;

    for(int c = 0; c < active_cores; c++) {
        if((child[c] = fork()) == 0) { // Child
            // Set the CPU
            current_cpu = c+1;
            cpu_set_t mask;
            CPU_ZERO(&mask);
            CPU_SET(current_cpu, &mask);
            sched_setaffinity(0, sizeof(mask), &mask);
            printf("Core %d started\n", current_cpu);
            unsigned tmp;
            signal(SIGUSR2, finish);
            kill(parent, SIGUSR1);
            while(loop_activated) {
                for (unsigned i = 1; i < ((HPM0_SIZE/sizeof(u128))&loop_activated); i++) {
                    tmp = plim[i];
                    //plim[i] = i;
                }
            }
            printf("Bombing from core %i is over\n", current_cpu);
            _exit(0);
        }
    }

    // Parent
    printf("Parent start\n");

    // Set the CPU
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    while(counter != active_cores) {}
    printf("All children started\n");
    printf("operation, active cores, seconds, nanoseconds, bytes, iterations, budget\n");

    unsigned k = 0;

    for (size_t j = 0; j < 100; j++) {
        struct timespec time1, time2;
        long unsigned sec, ns;

        (*config).reset = j;

        // Write
        clock_gettime(CLOCK_REALTIME, &time1);
        for (unsigned i = 0; i < (HPM0_SIZE/sizeof(u128)); i++) {
            plim[i] = (k++);
        }
        clock_gettime(CLOCK_REALTIME, &time2);
        sec = diff(time1, time2).tv_sec;
        ns  = diff(time1, time2).tv_nsec;
        printf("write, %d, %lu, %lu, %u, %u, %u\n", active_cores, sec, ns, HPM0_SIZE, (HPM0_SIZE/sizeof(u128)), cua_budget);

//        // Read
//        unsigned tmp;
//        clock_gettime(CLOCK_REALTIME, &time1);
//        for (unsigned i = 0; i < HPM0_SIZE/sizeof(unsigned); i++) {
//            tmp = plim[i];
//        }
//        clock_gettime(CLOCK_REALTIME, &time2);
//        sec = diff(time1, time2).tv_sec;
//        ns  = diff(time1, time2).tv_nsec;
//        printf("read, %d, %x, %lu, %lu, %u, %u\n", competing_cores, priorities, sec, ns, HPM0_SIZE, (HPM0_SIZE/sizeof(unsigned)));
    }

    for (size_t i = 0; i < active_cores; i++) {
        printf("kill child %d\n", i);
        kill(child[i], SIGUSR2);
        child[i] = wait(&status[i]);
    }
    printf("Finish\n");

    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
