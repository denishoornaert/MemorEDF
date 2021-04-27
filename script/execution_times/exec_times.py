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
            "fp":         read("fp/sdvbs_solo.csv", 1),
            "tdma":       read("tdma/sdvbs_solo.csv", 1),
#            "ts":         read("ts/sdvbs_solo.csv", 1),
            "main-route": read("main-route/sdvbs_solo.csv", 1)
#            "aging":   read("sdvbs_solo.csv", 1),
#            "fibo":    read("sdvbs_solo.csv", 1),
#            "gallois": read("sdvbs_solo.csv", 1)
        },
        "stress" : {
            "fp":         read("fp/sdvbs_stress.csv", 1),
            "tdma":       read("tdma/sdvbs_stress.csv", 1),
#            "ts":         read("ts/sdvbs_stress.csv", 1),
            "main-route": read("main-route/sdvbs_stress.csv", 1)
#            "aging":   read("sdvbs_stress.csv", 1),
#            "fibo":    read("sdvbs_stress.csv", 1),
#            "gallois": read("sdvbs_stress.csv", 1)
        }
    }

    contentions = ["solo", "stress"]
    policies = ["fp", "tdma", "main-route"]#, "ts"
    sizes = ["sqcif", "qcif", "cif", "vga"] #"sim_fast", "sim",
    amount_of_sizes = len(sizes)
    benchmarks = ["disparity", "mser", "localization", "stitch", "texture_synthesis", "tracking", "sift"]

    for contention in data.keys():
        for policy in data[contention].keys():
            for size in data[contention][policy].keys():
                for benchmark in data[contention][policy][size].keys():
                    data[contention][policy][size][benchmark] = {"avg":np.mean(data[contention][policy][size][benchmark]), "std":np.std(data[contention][policy][size][benchmark])}

    fig, axs = plt.subplots(len(sizes), len(benchmarks), gridspec_kw={'wspace': 0.035}, figsize=(12, 8))

    for index, size in enumerate(sizes):
        for i, benchmark in enumerate(benchmarks):
            #axs[index][i].set_ylim([0, 5])
            axs[index][i].set_ylim([0, 2])
            x = np.array([i*1.1 for i in range(len(policies))])
            if (index == 0):
                axs[index][i].set_title(benchmark)
            for offset, contention in zip([-1, 1], contentions):
                #y = [data[contention][policy][size][benchmark]["avg"]/data["solo"]["main-route"][size][benchmark]["avg"] for policy in policies]
                y = [data[contention][policy][size][benchmark]["avg"]/data["solo"][policy][size][benchmark]["avg"] for policy in policies]
                e = [data[contention][policy][size][benchmark]["std"]/data["solo"][policy][size][benchmark]["avg"] for policy in policies]
                axs[index][i].bar(x+(offset/2*bar_width), y, width=bar_width, align="center", label=contention)
            axs[index][i].set_xticks(x)
            axs[index][i].set_xticklabels(policies, rotation=45)
            axs[index][i].set_ylabel(size)#"Normalized Execution Time")
            axs[index][i].grid(axis='y')

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    handles, labels = axs[0][0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.415, -0.0075))
    plt.savefig("Execution_times.pdf", bbox_inches = 'tight', pad_inches = 0.22)
