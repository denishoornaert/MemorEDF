import matplotlib.pyplot as plt
import numpy as np
import csv

def mbps(amount, duration):
    return (amount/duration)*(10**9)/(2**20)

def read(filepath, skip):
    res = dict()
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for x in range(0, skip):
            next(csv_reader)
        for operation, threshold, sec, ns, bytes, accesses in csv_reader:
            res.setdefault(int(threshold), []).append(mbps(float(bytes), (int(sec)*10**9)+float(ns)))
    return res

linestyles = ['-', '--', '-.', ':']
coord = [(0, 0), (0, 1), (1, 0), (1, 1)]
mits = [8, 16, 24, 32]

#if (__name__ == '__main__'):
#    for prio in range(1, 5, 1):
#        for i in range(1, 5, 1):
#            data = read("prio_"+str(prio)+"/"+str(i)+"_cores.csv", 1)
#
#            x = list(data.keys())
#            x.sort()
#
#            for key in x:
#                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}
#
#            y = [data[key]["avg"] for key in x]
#            e = [data[key]["std"] for key in x]
#            y = y[1:]+[y[0]]
#            e = e[1:]+[e[0]]
#
#            plt.errorbar(x, y, yerr=e, label=str(i)+" cores - prio "+str(prio), linestyle=linestyles[prio-1])
#
#    plt.xticks(x, labels=[str(x[i]) for i in range(1,9)]+["Disabled"])
#
#    plt.xlabel("Threshold")
#    plt.ylabel("Bandwidth (MBps)")
#
#    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
#
#    plt.savefig("threshold.png")

#if (__name__ == '__main__'):
#    fig, axs = plt.subplots(2, 2)
#
#    for prio in range(1, 5, 1):
#        axs[coord[prio-1][0], coord[prio-1][1]].set_title("Priority = "+str(prio))
#        axs[coord[prio-1][0], coord[prio-1][1]].set_ylim([0, 700])
#        for i in range(1, 5, 1):
#            data = read("prio_"+str(prio)+"/"+str(i)+"_cores.csv", 1)
#
#            x = list(data.keys())
#            x.sort()
#
#            for key in x:
#                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}
#
#            y = [data[key]["avg"] for key in x]
#            e = [data[key]["std"] for key in x]
#            y = y[1:]+[y[0]]
#            e = e[1:]+[e[0]]
#
#            axs[coord[prio-1][0], coord[prio-1][1]].errorbar(x, y, yerr=e, label=str(i)+" cores")
#
#    for ax in axs.flat:
#        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")
#
#    # Hide x labels and tick labels for top plots and y ticks for right plots.
#    for ax in axs.flat:
#        ax.label_outer()
#
#    axs[0, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper left')
#
#    fig.set_size_inches(16, 10)
#    fig.savefig("threshold.png")

#if (__name__ == '__main__'):
#    fig, axs = plt.subplots(2, 2)
#
#    for i in range(1, 5, 1):
#        axs[coord[i-1][0], coord[i-1][1]].set_title("Cores = "+str(i))
#        axs[coord[i-1][0], coord[i-1][1]].set_ylim([0, 700])
#        for prio in range(1, 5, 1):
#            data = read("prio_"+str(prio)+"/"+str(i)+"_cores.csv", 1)
#
#            x = list(data.keys())
#            x.sort()
#
#            for key in x:
#                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}
#
#            y = [data[key]["avg"] for key in x]
#            e = [data[key]["std"] for key in x]
#            y = y[1:]+[y[0]]
#            e = e[1:]+[e[0]]
#
#            axs[coord[i-1][0], coord[i-1][1]].errorbar(x, y, yerr=e, label="prio ="+str(prio))
#
#            axs[coord[i-1][0], coord[i-1][1]].set_xticks(x)
#            axs[coord[i-1][0], coord[i-1][1]].set_xticklabels([str(x[j]) for j in range(1,9)]+["Disabled"])
#
#    for ax in axs.flat:
#        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")
#
#    # Hide x labels and tick labels for top plots and y ticks for right plots.
#    for ax in axs.flat:
#        ax.label_outer()
#
#    axs[0, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper left')
#
#    fig.set_size_inches(16, 10)
#    fig.savefig("threshold.png")

#if (__name__ == '__main__'):
#    for prio in range(1, 2, 1):
#        for i in range(1, 5, 1):
#            data = read("mit_"+str(prio)+"/"+str(i)+"_cores.csv", 1)
#
#            x = list(data.keys())
#            x.sort()
#
#            for key in x:
#                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}
#
#            y = [data[key]["avg"] for key in x]
#            e = [data[key]["std"] for key in x]
#            y = y[1:]+[y[0]]
#            e = e[1:]+[e[0]]
#
#            plt.errorbar(x, y, yerr=e, label=str(i)+" cores - mit "+str(prio), linestyle=linestyles[prio-1])
#
#    plt.xticks(x, labels=[str(x[i]) for i in range(1,9)]+["Disabled"])
#
#    plt.xlabel("Threshold")
#    plt.ylabel("Bandwidth (MBps)")
#
#    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
#
#    plt.savefig("threshold.png")

if (__name__ == '__main__'):
    fig, axs = plt.subplots(2, 2)

    for core in range(1, 5, 1):
        axs[coord[core-1][0], coord[core-1][1]].set_title("Cores = "+str(core))
        axs[coord[core-1][0], coord[core-1][1]].set_ylim([0, 700])
        for mit in range(1, 5, 1):
            data = read("mit_"+str(mit)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            axs[coord[core-1][0], coord[core-1][1]].errorbar(x, y, yerr=e, label="MIT ="+str(mits[mit-1]))

            axs[coord[core-1][0], coord[core-1][1]].set_xticks(x)
            axs[coord[core-1][0], coord[core-1][1]].set_xticklabels([str(x[j]) for j in range(1,9)]+["Disabled"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    axs[0, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper left')

    fig.set_size_inches(16, 10)
    fig.savefig("threshold.png")
