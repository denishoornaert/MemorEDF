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
mits = [16, 24, 32, 40]
periods = [4, 8, 16, 32]
priorities_labels = ["Lowest", "Third highest", "Second highest", "Highest"]

def plot_fp_rev():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for prio in range(1, 5, 1):
        axs[coord[prio-1][0], coord[prio-1][1]].set_title("CUA priority: "+priorities_labels[prio-1])
        axs[coord[prio-1][0], coord[prio-1][1]].set_ylim([0, 500])
        for core in range(1, 5, 1):
            data = read("fp/prio_"+str(prio)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            axs[coord[prio-1][0], coord[prio-1][1]].errorbar(x, y, yerr=e, label="Contention: "+str(core)+" core"+("s" if (core > 1) else " (Solo)"))

            axs[coord[core-1][0], coord[core-1][1]].set_xticks(x)
            axs[coord[core-1][0], coord[core-1][1]].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    fig.suptitle("Using FP, bandwidth experienced by the Core Under Analysis (CUA) for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[1, 1].get_legend_handles_labels()

    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("fp_rev.pdf", dpi=300, bbox_inches='tight')

def plot_fp():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for core in range(1, 5, 1):
        axs[core-1].set_title("Contention: "+str(core)+" core"+("s" if (core > 1) else " (Solo)"))
        axs[core-1].set_ylim([0, 500])
        for prio in range(1, 5, 1):
            data = read("fp/prio_"+str(prio)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            #axs[core-1].errorbar(x, y, yerr=e, label=priorities_labels[prio-1]+" priority")
            axs[core-1].plot(x, y, label=priorities_labels[prio-1]+" priority")

            axs[core-1].set_xticks(x)
            axs[core-1].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #fig.suptitle("Using FP, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("fp.pdf", dpi=300, bbox_inches='tight')

def plot_ts():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for core in range(1, 5, 1):
        axs[core-1].set_title("Contention: "+str(core)+" core"+("s" if (core > 1) else " (Solo)"))
        axs[core-1].set_ylim([0, 500])
        for mit in range(1, 5, 1):
            data = read("ts/mit_"+str(mit)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            #axs[core-1].errorbar(x, y, yerr=e, label="MIT = "+str(mits[mit-1]))
            axs[core-1].plot(x, y, label="MIT = "+str(mits[mit-1]))

            axs[core-1].set_xticks(x)
            axs[core-1].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #axs[1, 1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.2))#bbox_to_anchor=(1.05, 1), loc='upper left')

    #fig.suptitle("Using TS, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[0].get_legend_handles_labels()

    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("ts.pdf", dpi=300, bbox_inches='tight')

def plot_ts_rev():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for mit in range(1, 5, 1):
        axs[coord[mit-1][0], coord[mit-1][1]].set_title("MIT = "+str(mits[mit-1]))
        axs[coord[mit-1][0], coord[mit-1][1]].set_ylim([0, 500])
        for core in range(1, 5, 1):
            data = read("ts/mit_"+str(mit)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            axs[coord[mit-1][0], coord[mit-1][1]].errorbar(x, y, yerr=e, label="Contention: "+str(core)+" core"+("s" if (core > 1) else " (Solo)"))

            axs[coord[mit-1][0], coord[mit-1][1]].set_xticks(x)
            axs[coord[mit-1][0], coord[mit-1][1]].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #axs[1, 1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.2))#bbox_to_anchor=(1.05, 1), loc='upper left')

    #fig.suptitle("Using TS, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[1, 1].get_legend_handles_labels()

    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("ts_rev.pdf", dpi=300, bbox_inches='tight')

def plot_tdma():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for core in range(1, 5, 1):
        axs[core-1].set_title("Contention: "+str(core)+" core"+("s" if (core > 1) else " (Solo)"))
        axs[core-1].set_ylim([0, 500])
        for period in range(1, 5, 1):
            data = read("tdma/period_"+str(period)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            #axs[core-1].errorbar(x, y, yerr=e, label="Period = "+str(periods[period-1]))
            axs[core-1].plot(x, y, label="Period = "+str(periods[period-1]))

            axs[core-1].set_xticks(x)
            axs[core-1].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #axs[1, 1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.2))#bbox_to_anchor=(1.05, 1), loc='upper left')

    #fig.suptitle("Using TDMA, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("tdma.pdf", dpi=300, bbox_inches='tight')

def plot_tdma_rev():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for period in range(1, 5, 1):
        axs[coord[period-1][0], coord[period-1][1]].set_title("CUA period = "+str(periods[period-1]))
        axs[coord[period-1][0], coord[period-1][1]].set_ylim([0, 500])
        for core in range(1, 5, 1):
            data = read("tdma/period_"+str(period)+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            axs[coord[period-1][0], coord[period-1][1]].errorbar(x, y, yerr=e, label="Cores = "+str(core))

            axs[coord[period-1][0], coord[period-1][1]].set_xticks(x)
            axs[coord[period-1][0], coord[period-1][1]].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #axs[1, 1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.2))#bbox_to_anchor=(1.05, 1), loc='upper left')

    #fig.suptitle("Using TDMA, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[1, 1].get_legend_handles_labels()

    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("tdma_rev.pdf", dpi=300, bbox_inches='tight')

def plot_fair():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for core in range(1, 5, 1):
        axs[core-1].set_title("Contention: "+str(core)+" core"+("s" if (core > 1) else " (Solo)"))
        axs[core-1].set_ylim([0, 500])
        for policy in ["aging", "fibo", "gallois"]:
            data = read("fair/"+policy+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            axs[core-1].errorbar(x, y, yerr=e, label=policy)

            axs[core-1].set_xticks(x)
            axs[core-1].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #axs[1, 1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.2))#bbox_to_anchor=(1.05, 1), loc='upper left')

    #fig.suptitle("Using Aging, Fibonacci and Gallois, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[0].get_legend_handles_labels()

    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("fair.pdf", dpi=300, bbox_inches='tight')


def plot_fair_rev():
    fig, axs = plt.subplots(1, 4, gridspec_kw={'wspace': 0.035}, figsize=(14, 3))

    for index, policy in enumerate(["aging", "fibo", "gallois"]):
        axs[coord[index][0], coord[index][1]].set_title(policy)
        axs[coord[index][0], coord[index][1]].set_ylim([0, 500])
        for core in range(1, 5, 1):
            data = read("fair/"+policy+"/"+str(core)+"_cores.csv", 1)

            x = list(data.keys())
            x.sort()

            for key in x:
                data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

            y = [data[key]["avg"] for key in x]
            e = [data[key]["std"] for key in x]
            y = y[1:]+[y[0]]
            e = e[1:]+[e[0]]

            axs[coord[index][0], coord[index][1]].errorbar(x, y, yerr=e, label="Cores = "+str(core))

            axs[coord[index][0], coord[index][1]].set_xticks(x)
            axs[coord[index][0], coord[index][1]].set_xticklabels([str(x[j]) for j in range(1,9)]+["NA"])

    for ax in axs.flat:
        ax.set(xlabel="Threshold", ylabel="Bandwidth (MBps)")

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.label_outer()

    #axs[1, 1].legend(loc='upper center', bbox_to_anchor=(0.5, -0.2))#bbox_to_anchor=(1.05, 1), loc='upper left')

    #fig.suptitle("Using Aging, Fibonacci and Gallois, bandwidth experienced by the cores for different levels\nof contention and thresholds", fontsize=16)

    handles, labels = axs[0, 0].get_legend_handles_labels()

    fig.legend(handles, labels, loc='lower center', ncol=5, bbox_to_anchor=(0.44, 0))
    fig.subplots_adjust(bottom=0.275)
    fig.savefig("fair_rev.pdf", dpi=300, bbox_inches='tight')

if (__name__ == '__main__'):
    #
    plot_ts()
    plt.close()
#    #
#    plot_ts_rev()
#    plt.close()
    #
    plot_fair()
    plt.close()
#    #
#    plot_fair_rev()
#    plt.close()
    #
    plot_fp()
    plt.close()
#    #
#    plot_fp_rev()
#    plt.close()
    #
    plot_tdma()
    plt.close()
#    #
#    plot_tdma_rev()
#    plt.close()
