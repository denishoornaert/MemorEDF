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
    int competing_cores;
    unsigned priorities;
    unsigned samples;
    unsigned threshold;
    unsigned loop;

    sscanf(argv[1], "%d", &competing_cores);
    sscanf(argv[2], "%x", &priorities);
    sscanf(argv[3], "%u", &samples);
    sscanf(argv[4], "%u", &threshold);
    sscanf(argv[5], "%u", &loop);

    pid_t child[competing_cores];
    int status[competing_cores];

    int lpd_fd  = open_fd();
    int hpm0_fd  = open_fd();
    int hpm1_fd  = open_fd();

    struct configuration* config = mmap((void*)0, LPD0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED, lpd_fd, LPD0_ADDR);
    unsigned* plim   = mmap((void*)0, HPM0_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm0_fd, HPM0_ADDR);
    unsigned* plim_2 = mmap((void*)0, HPM1_SIZE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm1_fd, HPM1_ADDR);

    pid_t parent = getpid();
    signal(SIGUSR1, handler);

    // Set the period registers (default: 0x002faf08)
    (*config).periods[0] = 0x00000000;
    (*config).periods[1] = 0x00000000;
    (*config).periods[2] = 0x00000000;
    (*config).periods[3] = 0x00000000;
    // Set the deadline registers
    (*config).deadlines[0] = threshold;
    (*config).deadlines[1] = threshold;
    (*config).deadlines[2] = threshold;
    (*config).deadlines[3] = threshold;
    // Set the priorities register
    (*config).priorities = priorities;
    // Set the budget registers
    (*config).budgets[0] = 0x00000000;
    (*config).budgets[1] = 0x00000000;
    (*config).budgets[2] = 0x00000000;
    (*config).budgets[3] = 0x00000000;
    // Set the hyper period register
    (*config).hyperperiod = 0x00000000;
    // Set the scheduler
    (*config).scheduler = fp;

    for(int c = 0; c < competing_cores; c++) {
        current_cpu = c+1;
        if(current_cpu <= 1) {
            if((child[c] = fork()) == 0) { // Child
                // Set the CPU
                cpu_set_t mask;
                CPU_ZERO(&mask);
                CPU_SET(current_cpu, &mask);
                sched_setaffinity(0, sizeof(mask), &mask);
                printf("Core %d started\n", current_cpu);
                unsigned tmp;
                signal(SIGUSR2, finish);
                kill(parent, SIGUSR1);
                unsigned k = 0;
                while(loop_activated) {
                    for (unsigned i = ((current_cpu<<14)/sizeof(unsigned)); i < (HPM0_SIZE/sizeof(unsigned)); i+=(64*KB/sizeof(unsigned))) {
                        for (unsigned j = 0; j < (16*KB/sizeof(unsigned)); j+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                            plim[i+j] = (k++);
                        }
                    }
                }
                printf("Bombing from core %i is over\n", current_cpu);
                _exit(0);
            }
        }
        else {
            if((child[c] = fork()) == 0) { // Child
                // Set the CPU
                cpu_set_t mask;
                CPU_ZERO(&mask);
                CPU_SET(current_cpu, &mask);
                sched_setaffinity(0, sizeof(mask), &mask);
                printf("Core %d started\n", current_cpu);
                unsigned tmp;
                signal(SIGUSR2, finish);
                kill(parent, SIGUSR1);
                unsigned k = 0;
                while(loop_activated) {
                    for (unsigned i = ((current_cpu<<14)/sizeof(unsigned)); i < (HPM0_SIZE/sizeof(unsigned)); i+=(64*KB/sizeof(unsigned))) {
                        for (unsigned j = 0; j < (16*KB/sizeof(unsigned)); j+=(CACHE_LINE_SIZE/sizeof(unsigned))) {
                            plim_2[i+j] = k++;
                        }
                    }
                }
                printf("Bombing from core %i is over\n", current_cpu);
                _exit(0);
            }
        }
    }

    // Parent
    printf("Parent start\n");

    // Set the CPU
    cpu_set_t mask;
    CPU_ZERO(&mask);
    CPU_SET(0, &mask);
    sched_setaffinity(0, sizeof(mask), &mask);

    while(counter != competing_cores) {}
    printf("All children started\n");
    printf("operation, contention, priorities, seconds, nanoseconds, bytes\n");

    unsigned k = 0;
    unsigned tmp;

    for (size_t j = 0; j < samples; j++) {
        struct timespec time1, time2;
        long unsigned sec, ns;

        // Write
        clock_gettime(CLOCK_REALTIME, &time1);
        for (size_t i = 0; i < loop; i++) {
            plim[i] = i;
        }
        clock_gettime(CLOCK_REALTIME, &time2);
        sec = diff(time1, time2).tv_sec;
        ns  = diff(time1, time2).tv_nsec;
        printf("write, %d, %x, %lu, %lu, %u\n", competing_cores, priorities, sec, ns, (HPM0_SIZE/MAX_CORE));

//        // Read
//        unsigned tmp;
//        clock_gettime(CLOCK_REALTIME, &time1);
//        for (unsigned i = 0; i < HPM0_SIZE/sizeof(unsigned); i++) {
//            tmp = plim[i];
//        }
//        clock_gettime(CLOCK_REALTIME, &time2);
//        sec = diff(time1, time2).tv_sec;
//        ns  = diff(time1, time2).tv_nsec;
//        printf("read, %d, %x, %lu, %lu, %u\n", competing_cores, priorities, sec, ns, (HPM0_SIZE/MAX_CORE));
    }

    for (size_t i = 0; i < competing_cores; i++) {
        printf("kill child %d\n", i);
        kill(child[i], SIGUSR2);
        child[i] = wait(&status[i]);
    }
    printf("Finish\n");


    int unmap_result = 0;
    unmap_result |= unmap(plim  , HPM0_SIZE);
    unmap_result |= unmap(plim_2, HPM1_SIZE);
    unmap_result |= unmap(config, LPD0_SIZE);

    return unmap_result;
}
