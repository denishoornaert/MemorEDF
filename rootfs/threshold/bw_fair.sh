#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load experience variables
source ~/experiences/threshold/fair.config

# Load the jailhouse root cell for SchIM
if (lsmod | grep "jailhouse" &> /dev/null)
then
    :; # do nothing
else
    insmod $jh_path/driver/jailhouse.ko
    jailhouse enable $jh_path/configs/arm64/schim-root.cell
fi

# Aging
# Configure SchIM acording to the experiment profile
~/common/config_schim_aging.out ${threshold_core_0} ${threshold_core_1} ${threshold_core_2} ${threshold_core_3}
# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null
# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # If not yet created, creates the destination directory
    mkdir -p $dest_dir/"aging"
    # Create output raw data file
    touch ${dest_dir}/"aging"/${i}_cores.csv
    # Generate and redirect data
    echo "Start - aging - core ${i}"
    ~/synthetic/threshold_bw_aging.out > ${dest_dir}/"aging"/${i}_cores.csv
    # Kill one cell
    jailhouse cell destroy $((i-1)) >> /dev/null
done
# Run alone
# Create output raw data file
touch ${dest_dir}/"aging"/1_cores.csv
# Generate and redirect data
echo "Start - aging - core ${i}"
~/synthetic/threshold_bw_aging.out > ${dest_dir}/"aging"/1_cores.csv


# FIBO
# Configure SchIM acording to the experiment profile
~/common/config_schim_fibo.out ${threshold_core_0} ${threshold_core_1} ${threshold_core_2} ${threshold_core_3}
# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null
# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # If not yet created, creates the destination directory
    mkdir -p $dest_dir/"fibo"
    # Create output raw data file
    touch ${dest_dir}/"fibo"/${i}_cores.csv
    # Generate and redirect data
    echo "Start - fibo - core ${i}"
    ~/synthetic/threshold_bw_fibo.out > ${dest_dir}/"fibo"/${i}_cores.csv
    # Kill one cell
    jailhouse cell destroy $((i-1)) >> /dev/null
done
# Run alone
# Create output raw data file
touch ${dest_dir}/"fibo"/1_cores.csv
# Generate and redirect data
echo "Start - fibo - core ${i}"
~/synthetic/threshold_bw_fibo.out > ${dest_dir}/"fibo"/1_cores.csv


#GALLOIS
# Configure SchIM acording to the experiment profile
~/common/config_schim_gallois.out ${threshold_core_0} ${threshold_core_1} ${threshold_core_2} ${threshold_core_3}
# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null
# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # If not yet created, creates the destination directory
    mkdir -p $dest_dir/"gallois"
    # Create output raw data file
    touch ${dest_dir}/"gallois"/${i}_cores.csv
    # Generate and redirect data
    echo "Start - gallois - core ${i}"
    ~/synthetic/threshold_bw_gallois.out > ${dest_dir}/"gallois"/${i}_cores.csv
    # Kill one cell
    jailhouse cell destroy $((i-1)) >> /dev/null
done
# Run alone
# Create output raw data file
touch ${dest_dir}/"gallois"/1_cores.csv
# Generate and redirect data
echo "Start - gallois - core ${i}"
~/synthetic/threshold_bw_gallois.out > ${dest_dir}/"gallois"/1_cores.csv
