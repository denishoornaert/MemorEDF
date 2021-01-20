#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load the jailhouse root cell for SchIM
if (lsmod | grep "jailhouse" &> /dev/null)
then
    :; # do nothing
else
    insmod $jh_path/driver/jailhouse.ko
    jailhouse enable $jh_path/configs/arm64/schim-root.cell
fi

# Configure SchIM acording to the experiment profile
~/common/config_schim_fp.out 0f0e0d0c 0 0 0 0

off=0
# Load colored Memory Bomb cells
sleep 1
$jh_path/tools/jailhouse cell create $jh_path/configs/arm64/cpu-brain-freeze-col-mem-bomb.cell

sleep 1
$jh_path/tools/jailhouse cell load --name "cbf-col-mem-bomb-0" $jh_path/inmates/demos/arm64/cbf-mem-bomb-fence.bin
devmem $((comm_base + off)) 32 0)
$jh_path/tools/jailhouse cell start --name "cbf-col-mem-bomb-0"

echo "LIST OF CELLS:"
$jh_path/tools/jailhouse cell list

# Start Memory Bombs in either Read or Write mode
off=0
size=0x400000
verbose=1
mg_budget=0
devmem $((comm_base + off)) 32 8
devmem $((comm_base + off + 4)) 32 $size
devmem $((comm_base + off + 8)) 32 $mg_budget
usleep 500000
devmem $((comm_base + off)) 32 0x0b
usleep 500000
