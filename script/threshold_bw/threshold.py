import matplotlib.pyplot as plt
import numpy as np
import csv

def mbps(amount, duration):
    return (amount/duration)*(10**9)/(2**20)

def read(filepath, skip):
    res = dict()
    with open(filepath) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for x in range(0, skip):
            next(csv_reader)
        for operation, threshold, sec, ns, bytes, accesses in csv_reader:
            res.setdefault(int(threshold), []).append(mbps(float(bytes), (int(sec)*10**9)+float(ns)))
    return res

if (__name__ == '__main__'):
    data = read("measurements.csv", 1)

    x = list(data.keys())
    x.sort()

    for key in x:
        data[key] = {"avg":np.mean(data[key]), "std":np.std(data[key])}

    y = [data[key]["avg"] for key in x]
    e = [data[key]["std"] for key in x]
    y = y[1:]+[y[0]]
    e = e[1:]+[e[0]]

    plt.errorbar(x, y, yerr=e)

    plt.xticks(x, labels=[str(x[i]) for i in range(1,9)]+["NA"])

    plt.xlabel("Threshold")
    plt.ylabel("Bandwidth (MBps)")

    plt.savefig("threshold.png")
