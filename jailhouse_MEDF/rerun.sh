#!/bin/bash

tools/jailhouse cell destroy 1

tools/jailhouse cell create configs/arm64/s32v234sbc-prof.cell

tools/jailhouse cell load 1 inmates/demos/arm64/profiler.bin -s "con-type=JAILHOUSE" -a 0x1000	    

tools/jailhouse cell start 1

