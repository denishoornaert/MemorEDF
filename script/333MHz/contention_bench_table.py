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
        for operation, contention, seconds, nanoseconds, bytes, iterations in csv_reader:
            res.setdefault(int(contention), []).extend([mbps(int(bytes), (int(seconds)*10**9)+int(nanoseconds))])
    return res

if (__name__ == '__main__'):
    m = read("../../demo/data/333MHz/schim_mlb_out.csv", 1)
    for key in m.keys():
        m[key] = {"avg": round(np.mean(m[key]), 2), "std": round(np.std(m[key]), 2)}
        print(key, m[key])

    res = """\\begin{tabular}{l|l|l|l|l|}
\cline{2-5}
                                        & \multicolumn{4}{l|}{Contention} \\\\ \cline{2-5}
                                        & $\{C_{0}\}$ & $\{C_{0}, C_{1}\}$ & $\{C_{0}, C_{1}, C_{2}\}$ & $\{C_{0}, C_{1}, C_{2}, C_{3}\}$ \\\\ \hline
\multicolumn{1}{|l|}{Throughput (MBps)} & $"""+str(m[0]["avg"])+""" \pm """+str(m[0]["std"])+"""$ & $"""+str(m[1]["avg"])+""" \pm """+str(m[1]["std"])+"""$ & $"""+str(m[2]["avg"])+""" \pm """+str(m[2]["std"])+"""$ & $"""+str(m[3]["avg"])+""" \pm """+str(m[3]["std"])+"""$ \\\\ \hline
\end{tabular}
"""

    f = open("../../tex/tables/333MHz/table_contention_out.tex", "w")
    f.write(res)
    f.close()
