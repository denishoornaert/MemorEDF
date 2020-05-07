#ifndef TOOL_H
#define TOOL_H

#include <time.h>

enum scheduler {
    tdma = 0,
    edf  = 1,
    fp   = 2
};

struct configuration {
    unsigned periods[4];
    unsigned deadlines[4];
    unsigned priorities;
    unsigned scheduler;
};

int open_fd();

int unmap(void* target, unsigned size);

struct timespec diff(struct timespec start, struct timespec end);

#endif /* TOOL_H */
