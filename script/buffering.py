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
#    "design_2_i/MemorEDF_0_m00_axi_AWID[15:0]" : None,
#    "design_2_i/MemorEDF_0_m00_axi_AWVALID" : None,
#    "u_ila_0_MemorEDF_0_m00_axi_AWREADY" : None,
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_1_2_valid[1:0]" : None,
    "design_2_i/MemorEDF_0/inst/dispatcher_to_queues_3_4_valid[1:0]" : None
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
    res = []
    for i in range(50, len(array)-50):
        res.append(np.mean(array[i-50:i+50]))
    return res

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

def filterAvailable(array):
    x = []
    y = []
    for i in range(1, len(array)):
        if(array[i]):
            y.append(1)
            x.append(i)
    return (x, y)

def idfilter(array, noise=True):
    x = []
    y = []
    for i in range(len(array)):
        #if(m["design_2_i/MemorEDF_0_m00_axi_AWVALID"][i] and m["u_ila_0_MemorEDF_0_m00_axi_AWREADY"][i]):
        #if(m["design_2_i/MemorEDF_0_m00_axi_AWID[15:0]"][i] > 0):
        id = int(bin(m["design_2_i/MemorEDF_0_m00_axi_ARADDR[39:0]"][i]&0x000000c000)[2:].zfill(40)[40-16:40-14], 2)
        noise = min(max(np.random.normal(0, 0.001, 1)[0], -0.001), 0.001) if(noise) else 0
        y.append(id+noise)
        x.append(i)
    return (x, y)

if (__name__ == '__main__'):

    m = read("../doc/iladata/iladata_fp_3_0f0e0d0c_20_3.csv", 1)
    #m = read("../doc/iladata/iladata_mg_3_128_128_3.csv", 1)
    #m = read("../doc/iladata/iladata_tdma_3_3_512_512_1.csv", 1)

#    fig, (ax1, ax2, ax3, ax4, ax5) = plt.subplots(5)
    fig, (ax2, ax3, ax4) = plt.subplots(3)

    print("Amount of scheduling:")
    y = [elem for elem in m[scheduled]]
    total = 0
    for q in (0, 1, 2, 3):
        count = y.count(q)
        total += count
        print("Q"+str(q)+": "+str(count))
    print("Sum: "+str(total))

#    x, y = filterAvailable(m[slave_availability])
#    ax5.plot(x, y, linestyle="", marker="o", markersize=0.5)
#    ax5.get_xaxis().set_visible(False)
#    ax5.set_title("Slave availability")
#    ax5.set_ylabel("Availability");

#    # Plot 1
#    ## Title
#    ax1.set_title("Subplot 1 - Amount of transactions buffered");
#    ## plot function
#    for key in queues:
#        if(sum(m[key]) > 0):
#            ax1.plot(m["Sample in Buffer"], m[key], label=labels[key])
#    transaction_sum = [0 for i in m["Sample in Buffer"]]
#    for q in queues:
#        transaction_sum = np.add(transaction_sum, m[q])
#    ax1.plot(m["Sample in Buffer"], transaction_sum, label="Sum", color="red", linewidth=0.5, linestyle=":")
#    ## X axis
#    ax1.get_xaxis().set_visible(False)
#    ax1.set_xlim([0, len(m["Sample in Buffer"])])
#    ## Y axis
#    ax1.set_ylabel("Transactions");
#    ax1.set_yticks(list(range(0, 9, 2)));
#    ax1.set_ylim([-0.5, 8.5]);

    # Plot 2
    ## Title
    ax2.set_title("Subplot 1 - Amount of transactions buffered");
    ## plot function
    for key in queues:
        if(sum(m[key]) > 0):
            ax2.plot(m["Sample in Buffer"][50:-50], window(m[key]), label=labels[key])
    transaction_sum = [0 for i in m["Sample in Buffer"]]
    for q in queues:
        transaction_sum = np.add(transaction_sum, m[q])
    ax2.plot(m["Sample in Buffer"][50:-50], window(transaction_sum), label="Sum", linestyle=":", color="red", linewidth=0.5)
    ## X axis
    ax2.get_xaxis().set_visible(False)
    ax2.set_xlim([0, len(m["Sample in Buffer"])])
    ## Y axis
    ax2.set_ylabel("Transactions");
    ax2.set_yticks(list(range(0, 9, 2)));
    ax2.set_ylim([-0.5, 8.5]);

    # Plot 3
    ## Title
    ax3.set_title("Subplot 2 - Cumulative amount of input transactions");
    ## plot function
    # TODO to improve!!
    for i, key in enumerate(entries):
        x, y = posedge(onlySelect(m[key], 1))
        ax3.plot(x, y, label=labels[key]+str(0+i*1), linestyle="", marker="o", markersize=1)
        x, y = posedge(onlySelect(m[key], 2))
        ax3.plot(x, y, label=labels[key]+str(1+i*1), linestyle="", marker="o", markersize=1)
#    transaction_sum = [0 for i in m["Sample in Buffer"]]
#    for q in entries:
#        transaction_sum = np.add(transaction_sum, m[q])
#    x, y = posedge(transaction_sum)
#    ax3.plot(x, y, label="Sum", linestyle=":", color="red", linewidth=0.5)
    # X axis
    ax3.get_xaxis().set_visible(False)
    ax3.set_xlim([0, len(m["Sample in Buffer"])])
    # Y axis
    ax3.set_ylabel("Transactions");
    ax3.set_yticks(list(range(0, (len(y)+1), (len(y)//4))))
    ax3.set_ylim([-0.5, len(y)]);

    # Plot 4
    ## Title
    ax4.set_title("Subplot 3 - Queue scheduled at the master output");
    ## plot function
    x, y = idfilter(m["Sample in Buffer"])
    xy = np.vstack([x, y])
    z = gaussian_kde(xy)(xy)
    ax4.scatter(x, y, c=z, s=2, edgecolor='')
    ## X axis
    ax4.get_xaxis().set_visible(False)
    ax4.set_xlim([0, len(m["Sample in Buffer"])])
    ## Y axis
    ax4.set_ylabel("Queue ID")
    ax4.set_yticks(list(range(4)))
    ax4.set_ylim([-0.5, 3.5])

#    # Plot 5
#    ## Title
#    ax5.set_title("Subplot 5 - Queue scheduled within the SchIM");
#    ## plot function
#    x = m["Sample in Buffer"]
#    y = [elem+min(max(np.random.normal(0, 0.001, 1)[0], -0.001), 0.001) for elem in m[scheduled]]
#    xy = np.vstack([x, y])
#    z = gaussian_kde(xy)(xy)
#    ax5.scatter(x, y, c=z, s=2, edgecolor='')
#    ## X axis
#    ax5.get_xaxis().set_visible(False)
#    ax5.set_xlim([0, len(m["Sample in Buffer"])])
#    ## Y axis
#    ax5.set_ylabel("Queue ID")
#    ax5.set_yticks(list(range(4)))
#    ax5.set_ylim([-0.5, 3.5])

    handles, labels = ax2.get_legend_handles_labels()

    box = ax4.get_position()
    ax4.set_position([box.x0, box.y0 + box.height * 0.1, box.width, box.height * 0.9])

    # Put a legend below current axis
    ax4.legend(handles, labels, loc='upper center', bbox_to_anchor=(0.5, -0.05), fancybox=True, shadow=False, ncol=5)

    #fig.legend(handles, labels, loc='lower center')
#    fig.legend(handles, labels, bbox_to_anchor=(1.05, 1.0), loc='lower center')
    fig.tight_layout()
#    fig.set_size_inches(7.5, 6.0)
    plt.savefig("buffering.png", dpi=300)
