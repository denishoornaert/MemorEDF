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
        for operation, active_cores, active_slots, seconds, nanoseconds, bytes, iterations, slot_sizes in csv_reader:
            res.setdefault((int(slot_sizes), int(active_cores), int(active_slots)), []).extend([mbps(int(bytes), (int(seconds)*10**9)+int(nanoseconds))])
    return res

if (__name__ == '__main__'):
    m = read("../../demo/data/100MHz/schim_tdma_mlb_out.csv", 1)
    for key in m.keys():
        m[key] = {"avg": round(np.mean(m[key]), 2), "std": round(np.std(m[key]), 2)}
        print(key, m[key])

    res = """\\begin{tabular}{|c|c||c|c|c|c|}
        \hline
                                    &                                       & \multicolumn{4}{c|}{Active cores set}                                                                                                                         \\\\
        \cline{3-6}
        \multirow{-2}{*}{Slot size} & \multirow{-2}{*}{Slots set} & \multicolumn{1}{p{2.75cm}|}{$\{C_{0}\}$} & \multicolumn{1}{p{2.75cm}|}{$\{C_{0}, C_{1}\}$} & \multicolumn{1}{p{2.75cm}|}{$\{C_{0}, C_{1}, C_{2}\}$} & \multicolumn{1}{p{2.75cm}|}{$\{C_{0}, C_{1}, C_{2}, C_{3}\}$} \\\\
        \hline
        \hline
                                    & $\{C_{0}\}$                           & $"""+str(m[(1024, 0, 0)]["avg"])+""" \pm """+str(m[(1024, 0, 0)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}        & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}\}$                    & $"""+str(m[(1024, 0, 1)]["avg"])+""" \pm """+str(m[(1024, 0, 1)]["std"])+"""$    & $"""+str(m[(1024, 1, 1)]["avg"])+""" \pm """+str(m[(1024, 1, 1)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}, C_{2}\}$             & $"""+str(m[(1024, 0, 2)]["avg"])+""" \pm """+str(m[(1024, 0, 2)]["std"])+"""$    & $"""+str(m[(1024, 1, 2)]["avg"])+""" \pm """+str(m[(1024, 1, 2)]["std"])+"""$    & $"""+str(m[(1024, 2, 2)]["avg"])+""" \pm """+str(m[(1024, 2, 2)]["std"])+"""$            & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
        \multirow{-4}{*}{$1024~CC$} & $\{C_{0}, C_{1}, C_{2}, C_{3}\}$      & $"""+str(m[(1024, 0, 3)]["avg"])+""" \pm """+str(m[(1024, 0, 3)]["std"])+"""$    & $"""+str(m[(1024, 1, 3)]["avg"])+""" \pm """+str(m[(1024, 1, 3)]["std"])+"""$    & $"""+str(m[(1024, 2, 3)]["avg"])+""" \pm """+str(m[(1024, 2, 3)]["std"])+"""$            &  $"""+str(m[(1024, 3, 3)]["avg"])+""" \pm """+str(m[(1024, 3, 3)]["std"])+"""$                  \\\\
        \hline
        \hline
                                    & $\{C_{0}\}$                           & $"""+str(m[(2048, 0, 0)]["avg"])+""" \pm """+str(m[(2048, 0, 0)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}        & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}\}$                    & $"""+str(m[(2048, 0, 1)]["avg"])+""" \pm """+str(m[(2048, 0, 1)]["std"])+"""$    & $"""+str(m[(2048, 1, 1)]["avg"])+""" \pm """+str(m[(2048, 1, 1)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}, C_{2}\}$             & $"""+str(m[(2048, 0, 2)]["avg"])+""" \pm """+str(m[(2048, 0, 2)]["std"])+"""$    & $"""+str(m[(2048, 1, 2)]["avg"])+""" \pm """+str(m[(2048, 1, 2)]["std"])+"""$    & $"""+str(m[(2048, 2, 2)]["avg"])+""" \pm """+str(m[(2048, 2, 2)]["std"])+"""$            & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
        \multirow{-4}{*}{$2048~CC$} & $\{C_{0}, C_{1}, C_{2}, C_{3}\}$      & $"""+str(m[(2048, 0, 3)]["avg"])+""" \pm """+str(m[(2048, 0, 3)]["std"])+"""$    & $"""+str(m[(2048, 1, 3)]["avg"])+""" \pm """+str(m[(2048, 1, 3)]["std"])+"""$    & $"""+str(m[(2048, 2, 3)]["avg"])+""" \pm """+str(m[(2048, 2, 3)]["std"])+"""$            &  $"""+str(m[(2048, 3, 3)]["avg"])+""" \pm """+str(m[(2048, 3, 3)]["std"])+"""$                  \\\\
        \hline
        \hline
                                    & $\{C_{0}\}$                           & $"""+str(m[(4096, 0, 0)]["avg"])+""" \pm """+str(m[(4096, 0, 0)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}        & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}\}$                    & $"""+str(m[(4096, 0, 1)]["avg"])+""" \pm """+str(m[(4096, 0, 1)]["std"])+"""$    & $"""+str(m[(4096, 1, 1)]["avg"])+""" \pm """+str(m[(4096, 1, 1)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}, C_{2}\}$             & $"""+str(m[(4096, 0, 2)]["avg"])+""" \pm """+str(m[(4096, 0, 2)]["std"])+"""$    & $"""+str(m[(4096, 1, 2)]["avg"])+""" \pm """+str(m[(4096, 1, 2)]["std"])+"""$    & $"""+str(m[(4096, 2, 2)]["avg"])+""" \pm """+str(m[(4096, 2, 2)]["std"])+"""$            & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
        \multirow{-4}{*}{$4096~CC$} & $\{C_{0}, C_{1}, C_{2}, C_{3}\}$      & $"""+str(m[(4096, 0, 3)]["avg"])+""" \pm """+str(m[(4096, 0, 3)]["std"])+"""$    & $"""+str(m[(4096, 1, 3)]["avg"])+""" \pm """+str(m[(4096, 1, 3)]["std"])+"""$    & $"""+str(m[(4096, 2, 3)]["avg"])+""" \pm """+str(m[(4096, 2, 3)]["std"])+"""$            &  $"""+str(m[(4096, 3, 3)]["avg"])+""" \pm """+str(m[(4096, 3, 3)]["std"])+"""$                  \\\\
        \hline
        \hline
                                    & $\{C_{0}\}$                           & $"""+str(m[(8192, 0, 0)]["avg"])+""" \pm """+str(m[(8192, 0, 0)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}        & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}\}$                    & $"""+str(m[(8192, 0, 1)]["avg"])+""" \pm """+str(m[(8192, 0, 1)]["std"])+"""$    & $"""+str(m[(8192, 1, 1)]["avg"])+""" \pm """+str(m[(8192, 1, 1)]["std"])+"""$    & \cellcolor[HTML]{C0C0C0}                & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
                                    & $\{C_{0}, C_{1}, C_{2}\}$             & $"""+str(m[(8192, 0, 2)]["avg"])+""" \pm """+str(m[(8192, 0, 2)]["std"])+"""$    & $"""+str(m[(8192, 1, 2)]["avg"])+""" \pm """+str(m[(8192, 1, 2)]["std"])+"""$    & $"""+str(m[(8192, 2, 2)]["avg"])+""" \pm """+str(m[(8192, 2, 2)]["std"])+"""$            & \cellcolor[HTML]{C0C0C0}                       \\\\
        \cline{2-6}
        \multirow{-4}{*}{$8192~CC$} & $\{C_{0}, C_{1}, C_{2}, C_{3}\}$      & $"""+str(m[(8192, 0, 3)]["avg"])+""" \pm """+str(m[(8192, 0, 3)]["std"])+"""$    & $"""+str(m[(8192, 1, 3)]["avg"])+""" \pm """+str(m[(8192, 1, 3)]["std"])+"""$    & $"""+str(m[(8192, 2, 3)]["avg"])+""" \pm """+str(m[(8192, 2, 3)]["std"])+"""$            &  $"""+str(m[(8192, 3, 3)]["avg"])+""" \pm """+str(m[(8192, 3, 3)]["std"])+"""$                  \\\\
        \hline
    \end{tabular}
"""

    f = open("../../tex/tables/100MHz/table_tdma_out.tex", "w")
    f.write(res)
    f.close()
