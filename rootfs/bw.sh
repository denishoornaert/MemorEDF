#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load experience variables
cp $1 ~/experiences/profile.config
source ~/experiences/profile.config

# Load experience variables
prio_1=0c0e0d0f
prio_2=0e0d0f0c
prio_3=0d0f0c0e
prio_4=0f0c0e0d
threshold_core_0=0
threshold_core_1=0
threshold_core_2=0
threshold_core_3=0

dest_dir="synthetic/bw"

# Load the jailhouse root cell for SchIM
if (lsmod | grep "jailhouse" &> /dev/null)
then
    :; # do nothing
else
    insmod $jh_path/driver/jailhouse.ko
    jailhouse enable $jh_path/configs/arm64/schim-root.cell
fi

# Configure SchIM acording to the experiment profile
~/common/config_schim_fp.out $prio_1 $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3

# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null


# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # Run synthetic benchmark with different priorities
    for (( j = 1; j < 5; j++ )); do
        # If not yet created, creates the destination directory
        mkdir -p $dest_dir/"prio_${j}"
        # Create output raw data file
        touch ${dest_dir}/"prio_${j}"/${i}_cores.csv
        # Generate and redirect data
        ~/synthetic/threshold_bw.out "prio_${j}" > ${dest_dir}/"prio_${j}"/${i}_cores.csv
    done
    # Kill one cell
    jailhouse cell destroy $((i-1)) >> /dev/null
done

# Run alone
# Run synthetic benchmark with different priorities
for (( j = 1; j < 5; j++ )); do
    # Create output raw data file
    touch ${dest_dir}/"prio_${j}"/1_cores.csv
    # Generate and redirect data
    ~/synthetic/threshold_bw.out "prio_${j}" > ${dest_dir}/"prio_${j}"/1_cores.csv
done
