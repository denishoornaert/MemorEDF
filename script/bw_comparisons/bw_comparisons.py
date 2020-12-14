import matplotlib.pyplot as plt
import numpy as np
import csv

def mbps(amount, duration):
    return (amount/duration)*(10**9)/(2**20)

def read(filepath, skip):
    res = []
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for x in range(0, skip):
            next(csv_reader)
        for operation, seconds, nanoseconds, bytes in csv_reader:
            res.append(mbps(float(bytes), (int(seconds)*10**9)+float(nanoseconds)))
    return res



x = np.array([i*1.5 for i in range(4)])
x_labels = [
    '$\{C_{0}\}$',
    '$\{C_{0}, C_{1}\}$',
    '$\{C_{0}, C_{1}, C_{2}\}$',
    '$\{C_{0}, C_{1}, C_{2}, C_{3}\}$'
]

normal_route = [
    np.average(read("main_route/1_cores.csv", 1)),
    np.average(read("main_route/2_cores.csv", 1)),
    np.average(read("main_route/3_cores.csv", 1)),
    np.average(read("main_route/4_cores.csv", 1))
]
simple_loop_back = [
    np.average(read("simple_loop_back/1_cores.csv", 1)),
    np.average(read("simple_loop_back/2_cores.csv", 1)),
    np.average(read("simple_loop_back/3_cores.csv", 1)),
    np.average(read("simple_loop_back/4_cores.csv", 1))
]
SchIM_FP = [
    np.average(read("SchIM_FP/1_cores.csv", 1)),
    np.average(read("SchIM_FP/2_cores.csv", 1)),
    np.average(read("SchIM_FP/3_cores.csv", 1)),
    np.average(read("SchIM_FP/4_cores.csv", 1))
]
SchIM_TDMA = [
    np.average(read("SchIM_TDMA/1_cores.csv", 1)),
    np.average(read("SchIM_TDMA/2_cores.csv", 1)),
    np.average(read("SchIM_TDMA/3_cores.csv", 1)),
    np.average(read("SchIM_TDMA/4_cores.csv", 1))
]
SchIM_MG = [
    np.average(read("SchIM_TS/1_cores.csv", 1)),
    np.average(read("SchIM_TS/2_cores.csv", 1)),
    np.average(read("SchIM_TS/3_cores.csv", 1)),
    np.average(read("SchIM_TS/4_cores.csv", 1))
]

bar_width = 0.2

fig, ax = plt.subplots(1)
ax.bar(x+(-2*bar_width), normal_route,     width=bar_width, align="center", label="Normal Route")
ax.bar(x+(-1*bar_width), simple_loop_back, width=bar_width, align="center", label="PL Loop-back")
ax.bar(x+(+0*bar_width), SchIM_FP,         width=bar_width, align="center", label="SchIM FP")
ax.bar(x+(+1*bar_width), SchIM_TDMA,       width=bar_width, align="center", label="SchIM TDMA")
ax.bar(x+(+2*bar_width), SchIM_MG,         width=bar_width, align="center", label="SchIM TS")

print(simple_loop_back[0]-SchIM_FP[0])

plt.xlabel("Set of cores contending")
plt.xticks(x, x_labels)

plt.ylabel("Throughput (MBps)")

ax.legend()
fig.tight_layout()
plt.savefig("bw_comparisons.pdf", dpi=300)
