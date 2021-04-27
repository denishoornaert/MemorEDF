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



x = np.array([i*1.5 for i in range(3)])
x_labels = [
    "Normal",
#    "PL-Loop",
    "FP",
    "TDMA",
#    "TS",
#    "Fibo",
#    "Gallois",
#    "Aging"
]

cores_1 = [
    np.average(read("main_route/1_cores.csv", 1)),
#    np.average(read("simple_loop_back/1_cores.csv", 1)),
    np.average(read("SchIM_FP/1_cores.csv", 1)),
    np.average(read("SchIM_TDMA/1_cores.csv", 1)),
#    np.average(read("SchIM_TS/1_cores.csv", 1)),
#    np.average(read("SchIM_Fibo/1_cores.csv", 1)),
#    np.average(read("SchIM_Gallois/1_cores.csv", 1)),
#    np.average(read("SchIM_Aging/1_cores.csv", 1))
]
cores_2 = [
    np.average(read("main_route/2_cores.csv", 1)),
#    np.average(read("simple_loop_back/2_cores.csv", 1)),
    np.average(read("SchIM_FP/2_cores.csv", 1)),
    np.average(read("SchIM_TDMA/2_cores.csv", 1)),
#    np.average(read("SchIM_TS/2_cores.csv", 1)),
#    np.average(read("SchIM_Fibo/2_cores.csv", 1)),
#    np.average(read("SchIM_Gallois/2_cores.csv", 1)),
#    np.average(read("SchIM_Aging/2_cores.csv", 1))
]
cores_3 = [
    np.average(read("main_route/3_cores.csv", 1)),
#    np.average(read("simple_loop_back/3_cores.csv", 1)),
    np.average(read("SchIM_FP/3_cores.csv", 1)),
    np.average(read("SchIM_TDMA/3_cores.csv", 1)),
#    np.average(read("SchIM_TS/3_cores.csv", 1)),
#    np.average(read("SchIM_Fibo/3_cores.csv", 1)),
#    np.average(read("SchIM_Gallois/3_cores.csv", 1)),
#    np.average(read("SchIM_Aging/3_cores.csv", 1))
]
cores_4 = [
    np.average(read("main_route/4_cores.csv", 1)),
#    np.average(read("simple_loop_back/4_cores.csv", 1)),
    np.average(read("SchIM_FP/4_cores.csv", 1)),
    np.average(read("SchIM_TDMA/4_cores.csv", 1)),
#    np.average(read("SchIM_TS/4_cores.csv", 1)),
#    np.average(read("SchIM_Fibo/4_cores.csv", 1)),
#    np.average(read("SchIM_Gallois/4_cores.csv", 1)),
#    np.average(read("SchIM_Aging/4_cores.csv", 1))
]

bar_width = 0.2

fig, ax = plt.subplots(1)
ax.bar(x+(+1.5*bar_width), cores_4, width=bar_width, align="center", label="$\{C_{0}, C_{1}, C_{2}, C_{3}\}$")
ax.bar(x+(+0.5*bar_width), cores_3, width=bar_width, align="center", label="$\{C_{0}, C_{1}, C_{2}\}$")
ax.bar(x+(-0.5*bar_width), cores_2, width=bar_width, align="center", label="$\{C_{0}, C_{1}\}$")
ax.bar(x+(-1.5*bar_width), cores_1, width=bar_width, align="center", label="$\{C_{0}\}$")

plt.xlabel("Scheduler under analysis")
plt.xticks(x, x_labels)

plt.ylabel("Throughput (MBps)")

ax.legend()
fig.tight_layout()
plt.savefig("bw_comparisons_reverse.pdf", dpi=300)
