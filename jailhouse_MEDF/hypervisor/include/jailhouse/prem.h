#ifndef PREM_H
#define PREM_H

enum prem_phase {
	PREM_COMPATIBLE = 0,
	PREM_MEMORY	= 1,
	PREM_COMPUTE	= 2,
};

int prem_guard_set(enum prem_phase phase, unsigned long memory_budget, unsigned long timeout);

#endif
