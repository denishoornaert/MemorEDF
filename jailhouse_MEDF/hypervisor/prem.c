#include <jailhouse/prem.h>
#include <jailhouse/printk.h>
#include <asm/percpu.h>
#include <asm/spinlock.h>

static DEFINE_SPINLOCK(memory_phase);

int prem_guard_set(enum prem_phase phase, unsigned long memory_budget, unsigned long timeout)
{
	int ret = 0;

	struct per_cpu *cpu_data = this_cpu_data();

	printk("PREM set @CPU%d: %d, %lu, %lu\n",
	       this_cpu_data()->cpu_id,
	       phase, memory_budget, timeout);

	switch (phase) {
	case PREM_MEMORY:
		if (cpu_data->prem_phase != PREM_MEMORY)
			spin_lock(&memory_phase);
		break;
	case PREM_COMPUTE:
	case PREM_COMPATIBLE:
		if (cpu_data->prem_phase == PREM_MEMORY)
			spin_unlock(&memory_phase);
		break;
	default:
		ret = -EINVAL;
		goto err;
	}
	cpu_data->prem_phase = phase;
err:
	return ret;
}
