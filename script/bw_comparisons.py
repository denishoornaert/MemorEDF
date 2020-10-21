import matplotlib.pyplot as plt
import numpy as np

x = np.array([i*1.5 for i in range(4)])
x_labels = [
    '$\{C_{0}\}$',
    '$\{C_{0}, C_{1}\}$',
    '$\{C_{0}, C_{1}, C_{2}\}$',
    '$\{C_{0}, C_{1}, C_{2}, C_{3}\}$'
]

normal_route = [20, 13, 12, 11]
simple_loop_back = [9, 6, 4, 2]
SchIM_FP = [7, 3, 2, 1]
SchIM_TDMA = [7, 3, 2, 1]
SchIM_MG = [7, 3, 2, 1]

bar_width = 0.2

ax = plt.subplot(111)
ax.bar(x+(-2*bar_width), normal_route,     width=bar_width, align="center", label="Normal Route")
ax.bar(x+(-1*bar_width), simple_loop_back, width=bar_width, align="center", label="PL Loop-back")
ax.bar(x+(+0*bar_width), SchIM_FP,         width=bar_width, align="center", label="SchIM FP")
ax.bar(x+(+1*bar_width), SchIM_TDMA,       width=bar_width, align="center", label="SchIM TDMA")
ax.bar(x+(+2*bar_width), SchIM_MG,         width=bar_width, align="center", label="SchIM MG")

plt.xlabel("Set of cores contending")
plt.xticks(x, x_labels)

plt.ylabel("Throughput (MBps)")

plt.legend()
plt.savefig("../tex/images/bw_comparisons.pdf", dpi=300)
