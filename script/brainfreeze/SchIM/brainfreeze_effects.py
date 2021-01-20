import matplotlib.pyplot as plt
import numpy as np
import csv


def read(filepath, skip):
    res = dict()
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for x in range(0, skip):
            next(csv_reader)
        for benchmark, size, run, duration in csv_reader:
            res.setdefault(size.strip(), dict())
            res[size.strip()].setdefault(benchmark, []).append(int(duration))
    return res

if (__name__ == '__main__'):
    bar_width = 0.2
    data = {
        0:      read("bench_ts_None.csv", 1),
        1024:   read("bench_ts_1024.csv", 1),
        32768:  read("bench_ts_32768.csv", 1),
        131072: read("bench_ts_131072.csv", 1),
        524288: read("bench_ts_524288.csv", 1)
    }
    reference_mit = 0

    amount_of_sizes = max([len(data[mit].keys()) for mit in data.keys()])
    mits = sorted(list(data.keys()))
    #sizes = list(set().union(*[set(data[mit].keys()) for mit in data.keys()]))
    sizes = ["sim_fast", "sim", "sqcif", "qcif", "cif", "vga"]
    benchmarks = list(set().union(*[set(data[mit][size].keys()) for mit in data.keys() for size in data[mit].keys()]))

    for mit in data.keys():
        for size in data[mit].keys():
            for benchmark in data[mit][size].keys():
                data[mit][size][benchmark] = {"avg":np.mean(data[mit][size][benchmark]), "std":np.std(data[mit][size][benchmark])}

    fig, axs = plt.subplots(amount_of_sizes)
    fig.suptitle('Vertically stacked subplots')

    for index, size in enumerate(sizes):
        x = np.array([i*2.0 for i in range(len(benchmarks))])
        print(x)
        axs[index].set_title(size)
        for offset, mit in zip(range(-2, 3, 1), mits):
            y = [data[mit][size][benchmark]["avg"]/data[reference_mit][size][benchmark]["avg"] for benchmark in benchmarks]
            axs[index].bar(x+(offset*bar_width), y, width=bar_width, align="center", label=mit)
        axs[index].set_xticks(x)
        axs[index].set_xticklabels(benchmarks)
        axs[index].set_ylabel("Normalized Execution Time")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    plt.legend()
    plt.tight_layout()
    plt.show()
