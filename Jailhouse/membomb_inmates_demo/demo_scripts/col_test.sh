#!/bin/bash

tools/jailhouse cell create configs/arm64/zynqmp-zcu102-inmate-col-demo.cell

tools/jailhouse cell load 1 inmates/demos/arm64/gic-demo.bin


