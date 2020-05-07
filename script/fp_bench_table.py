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
            res.setdefault((contention, priorities), []).extend([(int(seconds)*10**9)+int(nanoseconds)])
    return res

if (__name__ == '__main__'):
    measurements = read("../demo/data/schim_fp_out.csv", 1)
    for key in measurements.keys():
        measurements[key] = {"avg": round(np.mean(measurements[key]), 2), "std": round(np.std(measurements[key]), 2)}
        print(key, measurements[key])
