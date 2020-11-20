import csv
import numpy as np
import os
import matplotlib.pyplot as plt
import scipy.ndimage
from scipy.stats import gaussian_kde

features = {
    "Sample in Buffer" : None,
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[0].queue/counter_reg__0[3:0]" : None,
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[1].queue/counter_reg[3:0]" : None,
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[2].queue/counter_reg[3:0]" : None,
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[3].queue/counter_reg[3:0]" : None,
    "design_2_i/MemorEDF_0/inst/nonaxidomain/selector/internal_id_reg[1]_9[1:0]" : None,
    "design_2_i/MemorEDF_0_m00_axi_ARADDR[39:0]" : None,
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_1_2_valid[1:0]" : None,
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_3_4_valid[1:0]" : None,
    "u_ila_0_m00_axi_arready" : None,
    "design_2_i/MemorEDF_0/inst/m00_axi_arvalid" : None
}

scheduled = "design_2_i/MemorEDF_0/inst/nonaxidomain/selector/internal_id_reg[1]_9[1:0]"

queues = [
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[0].queue/counter_reg__0[3:0]",
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[1].queue/counter_reg[3:0]",
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[2].queue/counter_reg[3:0]",
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[3].queue/counter_reg[3:0]"
]

entries = [
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_1_2_valid[1:0]",
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_3_4_valid[1:0]"
]

labels = {
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[0].queue/counter_reg__0[3:0]" : "Q0",
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[1].queue/counter_reg[3:0]" : "Q1",
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[2].queue/counter_reg[3:0]" : "Q2",
    "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[3].queue/counter_reg[3:0]" : "Q3",
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_1_2_valid[1:0]" : "Q",
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_3_4_valid[1:0]" : "Q"
}

aliases = {
    "Q0" : "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[0].queue/counter_reg__0[3:0]",
    "Q1" : "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[1].queue/counter_reg[3:0]",
    "Q2" : "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[2].queue/counter_reg[3:0]",
    "Q3" : "design_2_i/MemorEDF_0/inst/nonaxidomain/genblk1[3].queue/counter_reg[3:0]",
}

slave_availability = "design_2_i/MemorEDF_0_m00_axi_AWVALID"

def read(filepath, skip):
    res = dict()
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for header in csv_reader:
            for feature in features.keys():
                features[feature] = header.index(feature)
            break
        for row in csv_reader:
            for feature in features:
                if(feature == "Sample in Buffer"):
                    res.setdefault(feature, []).extend([int(row[features[feature]])])
                else:
                    res.setdefault(feature, []).extend([eval("0x"+row[features[feature]])])
    return res

def window(array):
    return [np.mean(array[i-50:i+50]) for i in range(50, len(array)-50)]

def onlySelect(array, elem):
    return [1 if(e==elem) else 0 for e in array]

def posedge(array):
    state = array[0]
    y = [state]
    x = [0]
    for i in range(1, len(array)):
        if(array[i] > array[i-1]):
            state += 1
            y.append(state)
            x.append(i)
    return (x, y)

def idfilter(array, noise=True):
    x = []
    y = []
    for i in range(len(array)):
        if(m["u_ila_0_m00_axi_arready"][i] and m["design_2_i/MemorEDF_0/inst/m00_axi_arvalid"][i]):
            id = int(bin(m["design_2_i/MemorEDF_0_m00_axi_ARADDR[39:0]"][i]&0x000000c000)[2:].zfill(40)[40-16:40-14], 2)
            noise = min(max(np.random.normal(0, 0.001, 1)[0], -0.001), 0.001) if(noise) else 0
            y.append(id+noise)
            x.append(i)
    return (x, y)

def smoothedTrace(ax, m):
    ## Title
    ax.set_title("Subplot 1 - Amount of transactions buffered");
    ## plot function
    for key in queues:
        if(sum(m[key]) > 0):
            ax.plot(m["Sample in Buffer"][50:-50], window(m[key]), label=labels[key])
    transaction_sum = [0 for i in m["Sample in Buffer"]]
    for q in queues:
        transaction_sum = np.add(transaction_sum, m[q])
    ax.plot(m["Sample in Buffer"][50:-50], window(transaction_sum), label="Sum", linestyle=":", color="red", linewidth=0.5)
    ## X axis
    ax.get_xaxis().set_visible(False)
    ax.set_xlim([0, len(m["Sample in Buffer"])])
    ## Y axis
    ax.set_ylabel("Transactions");
    ax.set_yticks(list(range(0, 9, 2)));
    ax.set_ylim([-0.5, 8.5]);

def cumulativeInputs(ax, m):
    ## Title
    ax.set_title("Subplot 2 - Cumulative amount of input transactions");
    ## plot function
    # TODO to improve!!
    for i, key in enumerate(entries):
        x, y = posedge(onlySelect(m[key], 1))
        ax.plot(x, y, label=labels[key]+str(0+i*1), linestyle="", marker="o", markersize=1)
        x, y = posedge(onlySelect(m[key], 2))
        ax.plot(x, y, label=labels[key]+str(1+i*1), linestyle="", marker="o", markersize=1)
    # X axis
    ax.get_xaxis().set_visible(False)
    ax.set_xlim([0, len(m["Sample in Buffer"])])
    # Y axis
    ax.set_ylabel("Transactions");
    ax.set_yticks(list(range(0, (len(y)+1), (len(y)//4))))
    ax.set_ylim([-0.5, len(y)]);

def schedulingDensity(ax, m):
    ## Title
    ax.set_title("Subplot 3 - Queue scheduled at the master output");
    ## plot function
    x, y = idfilter(m["Sample in Buffer"])
    xy = np.vstack([x, y])
    z = gaussian_kde(xy)(xy)
    ax.scatter(x, y, c=z, s=2, edgecolor='')
    ## X axis
    ax.get_xaxis().set_visible(False)
    ax.set_xlim([0, len(m["Sample in Buffer"])])
    ## Y axis
    ax.set_ylabel("Queue ID")
    ax.set_yticks(list(range(4)))
    ax.set_ylim([-0.5, 3.5])

if (__name__ == '__main__'):

    filenames = ("SchIM_FP/fp_3_0f0e0d0c_20_3", "SchIM_TS/ts_3_128_128_3", "SchIM_TDMA/tdma_3_3_512_512_1")
    inputExt  = ".csv"
    outputExt = ".png"

    for filename in filenames:
        # Read raw data file
        m = read(filename+inputExt, 1)
        # Create figure and plots objects
        fig, (ax1, ax2, ax3) = plt.subplots(3)
        # Sub-plot 1
        smoothedTrace(ax1, m)
        # Sub-plot 2
        cumulativeInputs(ax2, m)
        # Sub-plot 3
        schedulingDensity(ax3, m)
        # Create common legend
        legend_handles, legend_labels = ax1.get_legend_handles_labels()
        # Set position of the common legend
        box = ax3.get_position()
        ax3.set_position([box.x0, box.y0 + box.height * 0.1, box.width, box.height * 0.9])
        # Put a legend below current axis
        ax3.legend(legend_handles, legend_labels, loc='upper center', bbox_to_anchor=(0.5, -0.05), fancybox=True, shadow=False, ncol=5)
        # Draw the plot on PNG
        fig.tight_layout()
        plt.savefig(filename+outputExt, dpi=300)
        # Reset/close the plot/canvas
        plt.close()
