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
#include <stdint.h>

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
    unsigned samples;

    sscanf(argv[1], "%d", &competing_cores);
    sscanf(argv[2], "%u", &samples);

    pid_t child[competing_cores];
    int status[competing_cores];

    int lpd_fd  = open_fd();
    int hpm_fd  = open_fd();

    u128* plim   = mmap((void*)0, HPM1_SIZE*MAX_CORE, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|0x40, hpm_fd, HPM1_ADDR);

    pid_t parent = getpid();
    signal(SIGUSR1, handler);

    for(int c = 0; c < competing_cores; c++) {
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
                for (unsigned i = 0; i < (HPM1_SIZE/sizeof(u128)); i+=(CACHE_LINE_SIZE/sizeof(u128))) {
                    //tmp = plim[i];
                    plim[(current_cpu*HPM1_SIZE/sizeof(u128))+i] = i;
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

    while(counter != competing_cores) {}
    printf("All children started\n");
    printf("operation, contention, seconds, nanoseconds, bytes, iterations\n");

    unsigned k = 0;

    for (size_t j = 0; j < samples; j++) {
        struct timespec time1, time2;
        long unsigned sec, ns;

        // Write
        clock_gettime(CLOCK_REALTIME, &time1);
        for (unsigned i = 0; i < (HPM1_SIZE/sizeof(u128)); i+=(CACHE_LINE_SIZE/sizeof(u128))) {
            plim[i] = (k++);
        }
        clock_gettime(CLOCK_REALTIME, &time2);
        sec = diff(time1, time2).tv_sec;
        ns  = diff(time1, time2).tv_nsec;
        printf("write, %d, %lu, %lu, %u, %u\n", competing_cores, sec, ns, HPM1_SIZE, (HPM1_SIZE/sizeof(u128)));

//        // Read
//        unsigned tmp;
//        clock_gettime(CLOCK_REALTIME, &time1);
//        for (unsigned i = 0; i < HPM1_SIZE/sizeof(unsigned); i++) {
//            tmp = plim[i];
//        }
//        clock_gettime(CLOCK_REALTIME, &time2);
//        sec = diff(time1, time2).tv_sec;
//        ns  = diff(time1, time2).tv_nsec;
//        printf("read, %d, %x, %lu, %lu, %u, %u\n", competing_cores, priorities, sec, ns, HPM1_SIZE, (HPM1_SIZE/sizeof(unsigned)));
    }

    for (size_t i = 0; i < competing_cores; i++) {
        printf("kill child %d\n", i);
        kill(child[i], SIGUSR2);
        child[i] = wait(&status[i]);
    }
    printf("Finish\n");


    int unmap_result = unmap(plim  , HPM1_SIZE);

    return unmap_result;
}
