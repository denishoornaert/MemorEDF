import csv
import numpy as np
import os

def read(filepath, skip):
    res = dict()
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for x in range(0, skip):
            next(csv_reader)
        for operation, contention, priorities, seconds, nanoseconds, bytes, iterations in csv_reader:
            res.setdefault((contention.strip(), priorities.strip()), []).extend([(int(seconds)*10**9)+int(nanoseconds)])
    return res

if (__name__ == '__main__'):
    measurements = read("../demo/data/schim_fp_mlb_out.csv", 1)
    for key in measurements.keys():
        measurements[key] = {"avg": round(np.mean(measurements[key]), 2), "std": round(np.std(measurements[key]), 2)}
        print(key, measurements[key])
    
    res = """\\begin{tabular}{|c|c||c|c|c|c|}
    \hline
    \multicolumn{2}{|c||}{Contention}         & \multicolumn{4}{c|}{Priorities assignment} \\\\
    \hline %                                     0c0d0e0f                                      0f0c0d0e                                      0f0e0c0d                                      0f0e0d0c
    Qty.          & Cores set                 & $C_{0} \succ C_{3} \succ C_{2} \succ C_{1}$ & $C_{3} \succ C_{0} \succ C_{2} \succ C_{1}$ & $C_{3} \succ C_{2} \succ C_{0} \succ C_{1}$ & $C_{3} \succ C_{2} \succ C_{1} \succ C_{0}$ \\\\
    \hline
    \hline
    0             & $\{\phi\}$                & $"""+str(measurements[("0", "c0d0e0f")]["avg"])+"""~ns$ & $"""+str(measurements[("0", "f0c0d0e")]["avg"])+"""~ns$ & $"""+str(measurements[("0", "f0e0c0d")]["avg"])+"""~ns$ & $"""+str(measurements[("0", "f0e0d0c")]["avg"])+"""~ns$ \\\\
    \hline
    1             & $\{C_{1}\}$               & $"""+str(measurements[("1", "c0d0e0f")]["avg"])+"""~ns$ & $"""+str(measurements[("1", "f0c0d0e")]["avg"])+"""~ns$ & $"""+str(measurements[("1", "f0e0c0d")]["avg"])+"""~ns$ & $"""+str(measurements[("1", "f0e0d0c")]["avg"])+"""~ns$ \\\\
    \hline
    2             & $\{C_{1}, C_{2}\}$        & $"""+str(measurements[("2", "c0d0e0f")]["avg"])+"""~ns$ & $"""+str(measurements[("2", "f0c0d0e")]["avg"])+"""~ns$ & $"""+str(measurements[("2", "f0e0c0d")]["avg"])+"""~ns$ & $"""+str(measurements[("2", "f0e0d0c")]["avg"])+"""~ns$ \\\\
    \hline
    3             & $\{C_{1}, C_{2}, C_{3}\}$ & $"""+str(measurements[("3", "c0d0e0f")]["avg"])+"""~ns$ & $"""+str(measurements[("3", "f0c0d0e")]["avg"])+"""~ns$ & $"""+str(measurements[("3", "f0e0c0d")]["avg"])+"""~ns$ & $"""+str(measurements[("3", "f0e0d0c")]["avg"])+"""~ns$ \\\\
    \hline
    \hline
    0             & $\{\phi\}$                &   $\pm """+str(measurements[("0", "c0d0e0f")]["std"])+"""~ns$ & $\pm """+str(measurements[("0", "f0c0d0e")]["std"])+"""~ns$ & $\pm """+str(measurements[("0", "f0e0c0d")]["std"])+"""~ns$ & $\pm """+str(measurements[("0", "f0e0d0c")]["std"])+"""~ns$ \\\\
    \hline
    1             & $\{C_{1}\}$               &   $\pm """+str(measurements[("1", "c0d0e0f")]["std"])+"""~ns$ & $\pm """+str(measurements[("1", "f0c0d0e")]["std"])+"""~ns$ & $\pm """+str(measurements[("1", "f0e0c0d")]["std"])+"""~ns$ & $\pm """+str(measurements[("1", "f0e0d0c")]["std"])+"""~ns$ \\\\
    \hline
    2             & $\{C_{1}, C_{2}\}$        &   $\pm """+str(measurements[("2", "c0d0e0f")]["std"])+"""~ns$ & $\pm """+str(measurements[("2", "f0c0d0e")]["std"])+"""~ns$ & $\pm """+str(measurements[("2", "f0e0c0d")]["std"])+"""~ns$ & $\pm """+str(measurements[("2", "f0e0d0c")]["std"])+"""~ns$ \\\\
    \hline
    3             & $\{C_{1}, C_{2}, C_{3}\}$ &   $\pm """+str(measurements[("3", "c0d0e0f")]["std"])+"""~ns$ & $\pm """+str(measurements[("3", "f0c0d0e")]["std"])+"""~ns$ & $\pm """+str(measurements[("3", "f0e0c0d")]["std"])+"""~ns$ & $\pm """+str(measurements[("3", "f0e0d0c")]["std"])+"""~ns$ \\\\
    \hline
\end{tabular}
"""

    f = open("../tex/tables/table_fp_out.tex", "w")
    f.write(res)
    f.close()
