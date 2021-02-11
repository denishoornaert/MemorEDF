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
    bar_width = 0.325
    data = {
        "solo" : {
            "fp":      read("fp.csv", 1),
            "tdma":    read("tdma.csv", 1),
            "ts":      read("ts.csv", 1),
            "aging":   read("aging.csv", 1),
            "fibo":    read("fibo.csv", 1),
            "gallois": read("gallois.csv", 1)
        },
        "stress" : {
            "fp":      read("fp_stress.csv", 1),
            "tdma":    read("tdma_stress.csv", 1),
            "ts":      read("ts_stress.csv", 1),
            "aging":   read("aging_stress.csv", 1),
            "fibo":    read("fibo_stress.csv", 1),
            "gallois": read("gallois_stress.csv", 1)
        }
    }

    contentions = list(data.keys())
    policies = list(data["solo"].keys())
    sizes = list(set().union(*[set(data[mit].keys()) for mit in data.keys()]))
    amount_of_sizes = len(sizes)
    benchmarks = list(set().union(*[set(data[mit][size].keys()) for mit in data.keys() for size in data[mit].keys()]))

    for contention in data.keys():
        for policy in data[contention].keys():
            for size in data[contention][policy].keys():
                for benchmark in data[contention][policy][size].keys():
                    data[contention][policy][size][benchmark] = {"avg":np.mean(data[contention][policy][size][benchmark]), "std":np.std(data[contention][policy][size][benchmark])}

    fig, axs = plt.subplots(len(policies), len(benchmarks), gridspec_kw={'wspace': 0.035})

    for i, policy in enumerate(policies):
        for index, benchmark in enumerate(benchmarks):
            x = np.array([i*2.0 for i in range(amount_of_sizes)])
            axs[i][index].set_title("Benchmark: "+benchmark)
            for offset, contention in zip(range(-(len(contentios)/2), (len(contentios)/2)+1), contentions):
                y = [data[contention][policy][size][benchmark]["avg"]/data["solo"][policy][size][benchmark]["avg"] for size in sizes]
                axs[i][index].bar(x+(offset*bar_width), y, width=bar_width, align="center", label=contention)
            axs[i][index].set_xticks(x)
            axs[i][index].set_xticklabels(sizes, rotation=45)
            axs[i][index].set_ylabel("Normalized Execution Time")
            axs[i][index].grid(axis='y')

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    handles, labels = axs[0][0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.415, -0.0075))
    plt.savefig("Execution_times.pdf", bbox_inches = 'tight', pad_inches = 0.22)
