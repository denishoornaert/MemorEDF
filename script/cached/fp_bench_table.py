import csv
import numpy as np
import os

def mbps(amount, duration):
    return (amount/duration)*(10**9)/(2**20)

def read(filepath, skip):
    res = dict()
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for x in range(0, skip):
            next(csv_reader)
        for operation, contention, priorities, seconds, nanoseconds, bytes in csv_reader:
            res.setdefault((contention.strip(), priorities.strip()), []).extend([mbps(int(bytes), (int(seconds)*10**9)+int(nanoseconds))])
    return res

if (__name__ == '__main__'):
    m = read("../../demo/data/cached/schim_fp_mlb_out.csv", 1)
    for key in m.keys():
        m[key] = {"avg": round(np.mean(m[key]), 2), "std": round(np.std(m[key]), 2)}
        print(key, m[key])

    res = """\\begin{tabular}{|c||c|c|c|c|}
    \hline
    \multirow{2}{*}{Contention}               & \multicolumn{4}{c|}{Priorities assignment} \\\\
    \cline{2-5} %                                     0c0d0e0f                                      0f0c0d0e                                      0f0e0c0d                                      0f0e0d0c
    Cores set                 & $C_{0} \succ C_{3} \succ C_{2} \succ C_{1}$ & $C_{3} \succ C_{0} \succ C_{2} \succ C_{1}$ & $C_{3} \succ C_{2} \succ C_{0} \succ C_{1}$ & $C_{3} \succ C_{2} \succ C_{1} \succ C_{0}$ \\\\
    \hline
    \hline
    $\{\phi\}$                & $"""+str(m[("0", "c0d0e0f")]["avg"])+""" \pm """+str(m[("0", "c0d0e0f")]["std"])+"""$ & $"""+str(m[("0", "f0c0d0e")]["avg"])+""" \pm """+str(m[("0", "f0c0d0e")]["std"])+"""$ & $"""+str(m[("0", "f0e0c0d")]["avg"])+""" \pm """+str(m[("0", "f0e0c0d")]["std"])+"""$ & $"""+str(m[("0", "f0e0d0c")]["avg"])+""" \pm """+str(m[("0", "f0e0d0c")]["std"])+"""$ \\\\
    \hline
    $\{C_{1}\}$               & $"""+str(m[("1", "c0d0e0f")]["avg"])+""" \pm """+str(m[("1", "c0d0e0f")]["std"])+"""$ & $"""+str(m[("1", "f0c0d0e")]["avg"])+""" \pm """+str(m[("1", "f0c0d0e")]["std"])+"""$ & $"""+str(m[("1", "f0e0c0d")]["avg"])+""" \pm """+str(m[("1", "f0e0c0d")]["std"])+"""$ & $"""+str(m[("1", "f0e0d0c")]["avg"])+""" \pm """+str(m[("1", "f0e0d0c")]["std"])+"""$ \\\\
    \hline
    $\{C_{1}, C_{2}\}$        & $"""+str(m[("2", "c0d0e0f")]["avg"])+""" \pm """+str(m[("2", "c0d0e0f")]["std"])+"""$ & $"""+str(m[("2", "f0c0d0e")]["avg"])+""" \pm """+str(m[("2", "f0c0d0e")]["std"])+"""$ & $"""+str(m[("2", "f0e0c0d")]["avg"])+""" \pm """+str(m[("2", "f0e0c0d")]["std"])+"""$ & $"""+str(m[("2", "f0e0d0c")]["avg"])+""" \pm """+str(m[("2", "f0e0d0c")]["std"])+"""$ \\\\
    \hline
    $\{C_{1}, C_{2}, C_{3}\}$ & $"""+str(m[("3", "c0d0e0f")]["avg"])+""" \pm """+str(m[("3", "c0d0e0f")]["std"])+"""$ & $"""+str(m[("3", "f0c0d0e")]["avg"])+""" \pm """+str(m[("3", "f0c0d0e")]["std"])+"""$ & $"""+str(m[("3", "f0e0c0d")]["avg"])+""" \pm """+str(m[("3", "f0e0c0d")]["std"])+"""$ & $"""+str(m[("3", "f0e0d0c")]["avg"])+""" \pm """+str(m[("3", "f0e0d0c")]["std"])+"""$ \\\\
    \hline
\end{tabular}
"""

    f = open("../../tex/tables/cached/table_fp_out.tex", "w")
    f.write(res)
    f.close()
