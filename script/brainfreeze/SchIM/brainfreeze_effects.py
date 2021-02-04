import matplotlib.pyplot as plt
import numpy as np
import csv
from math import log2

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
    coord = [(0, 0), (0, 1), (1, 0), (1, 1)]
    bar_width = 0.325
    data = {
        0:      read("bench_ts_None.csv", 1),
        1024:   read("bench_ts_1024.csv", 1),
        32768:  read("bench_ts_32768.csv", 1),
        131072: read("bench_ts_131072.csv", 1),
        524288: read("bench_ts_524288.csv", 1)
    }
    reference_mit = 0

    mits = sorted(list(data.keys()))
    #sizes = list(set().union(*[set(data[mit].keys()) for mit in data.keys()]))
    sizes = ["sim", "sqcif", "qcif", "cif", "vga"]
    #amount_of_sizes = max([len(data[mit].keys()) for mit in data.keys()])
    amount_of_sizes = len(sizes)
    #benchmarks = list(set().union(*[set(data[mit][size].keys()) for mit in data.keys() for size in data[mit].keys()]))
    benchmarks = ["localization", "mser", "sift", "tracking"]

    for mit in data.keys():
        for size in data[mit].keys():
            for benchmark in data[mit][size].keys():
                data[mit][size][benchmark] = {"avg":np.mean(data[mit][size][benchmark]), "std":np.std(data[mit][size][benchmark])}

    fig, axs = plt.subplots(1, len(benchmarks), gridspec_kw={'wspace': 0.035}, figsize=[20, 5])
    #fig.suptitle('Vertically stacked subplots')

    for index, benchmark in enumerate(benchmarks):
        x = np.array([i*2.0 for i in range(len(sizes))])
        axs[index].set_title("Benchmark: "+benchmark)
        for offset, mit in zip(range(-2, 3, 1), mits):
            y = [data[mit][size][benchmark]["avg"]/data[reference_mit][size][benchmark]["avg"] for size in sizes]
            axs[index].bar(x+(offset*bar_width), y, width=bar_width, align="center", label=("Solo" if(mit == 0) else (r"MIT = $2^{"+str(int(log2(mit))))+"}$"))
        axs[index].set_xticks(x)
        axs[index].set_xticklabels(sizes, rotation=45)
        axs[index].set_yticks(range(0, 12))
        axs[index].set_yticklabels([str(i) if(i%2==0) else "" for i in range(0, 12)])
        axs[index].set_ylabel("Normalized Execution Time")
        axs[index].set_ylim([0, 11])
        axs[index].grid(axis='y')

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    handles, labels = axs[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.415, -0.0075))
    plt.savefig("cpu-brainfreeze-interference.pdf", bbox_inches = 'tight', pad_inches = 0.22)
