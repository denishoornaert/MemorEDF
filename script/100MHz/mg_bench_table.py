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
        for operation, active_cores, seconds, nanoseconds, bytes, iterations, budget in csv_reader:
            res.setdefault((int(active_cores), int(budget)), []).extend([mbps(int(bytes), (int(seconds)*10**9)+int(nanoseconds))])
    return res

if (__name__ == '__main__'):
    m = read("../../demo/data/100MHz/schim_mg_mlb_out.csv", 1)
    for key in m.keys():
        m[key] = {"avg": round(np.mean(m[key]), 2), "std": round(np.std(m[key]), 2)}
        print(key, m[key])

    res = """\\begin{tabular}{c|c|c|c|c|}
    \cline{2-5}
                                        & \multicolumn{4}{c|}{Active cores} \\\\ \hline
    \multicolumn{1}{|c||}{Period (CC)}  & $\{C_{0}\}$ & $\{C_{0}, C_{1}\}$ & $\{C_{0}, C_{1}, C_{2}\}$ & $\{C_{0}, C_{1}, C_{2}, C_{3}\}$ \\\\ \hline \hline
    \multicolumn{1}{|c||}{20}           & $"""+str(m[(0,  20)]["avg"])+""" \pm """+str(m[(0,  20)]["std"])+"""$ & $"""+str(m[(1,  20)]["avg"])+""" \pm """+str(m[(1,  20)]["std"])+"""$ & $"""+str(m[(2,  20)]["avg"])+""" \pm """+str(m[(2,  20)]["std"])+"""$ & $"""+str(m[(3,  20)]["avg"])+""" \pm """+str(m[(3,  20)]["std"])+"""$ \\\\ \hline
    \multicolumn{1}{|c||}{40}           & $"""+str(m[(0,  40)]["avg"])+""" \pm """+str(m[(0,  40)]["std"])+"""$ & $"""+str(m[(1,  40)]["avg"])+""" \pm """+str(m[(1,  40)]["std"])+"""$ & $"""+str(m[(2,  40)]["avg"])+""" \pm """+str(m[(2,  40)]["std"])+"""$ & $"""+str(m[(3,  40)]["avg"])+""" \pm """+str(m[(3,  40)]["std"])+"""$ \\\\ \hline
    \multicolumn{1}{|c||}{80}           & $"""+str(m[(0,  80)]["avg"])+""" \pm """+str(m[(0,  80)]["std"])+"""$ & $"""+str(m[(1,  80)]["avg"])+""" \pm """+str(m[(1,  80)]["std"])+"""$ & $"""+str(m[(2,  80)]["avg"])+""" \pm """+str(m[(2,  80)]["std"])+"""$ & $"""+str(m[(3,  80)]["avg"])+""" \pm """+str(m[(3,  80)]["std"])+"""$ \\\\ \hline
    \multicolumn{1}{|c||}{120}          & $"""+str(m[(0, 120)]["avg"])+""" \pm """+str(m[(0, 120)]["std"])+"""$ & $"""+str(m[(1, 120)]["avg"])+""" \pm """+str(m[(1, 120)]["std"])+"""$ & $"""+str(m[(2, 120)]["avg"])+""" \pm """+str(m[(2, 120)]["std"])+"""$ & $"""+str(m[(3, 120)]["avg"])+""" \pm """+str(m[(3, 120)]["std"])+"""$ \\\\ \hline
    \multicolumn{1}{|c||}{160}          & $"""+str(m[(0, 160)]["avg"])+""" \pm """+str(m[(0, 160)]["std"])+"""$ & $"""+str(m[(1, 160)]["avg"])+""" \pm """+str(m[(1, 160)]["std"])+"""$ & $"""+str(m[(2, 160)]["avg"])+""" \pm """+str(m[(2, 160)]["std"])+"""$ & $"""+str(m[(3, 160)]["avg"])+""" \pm """+str(m[(3, 160)]["std"])+"""$ \\\\ \hline
    \multicolumn{1}{|c||}{200}          & $"""+str(m[(0, 200)]["avg"])+""" \pm """+str(m[(0, 200)]["std"])+"""$ & $"""+str(m[(1, 200)]["avg"])+""" \pm """+str(m[(1, 200)]["std"])+"""$ & $"""+str(m[(2, 200)]["avg"])+""" \pm """+str(m[(2, 200)]["std"])+"""$ & $"""+str(m[(3, 200)]["avg"])+""" \pm """+str(m[(3, 200)]["std"])+"""$ \\\\ \hline
\end{tabular}
"""

    f = open("../../tex/tables/100MHz/table_mg_out.tex", "w")
    f.write(res)
    f.close()
