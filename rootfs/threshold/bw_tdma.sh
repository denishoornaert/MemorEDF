#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load experience variables
touch ~/experiences/profile.config
cp ~/experiences/threshold/tdma.config ~/experiences/profile.config
source ~/experiences/profile.config

## Load the jailhouse root cell for SchIM
#if (lsmod | grep "jailhouse" &> /dev/null)
#then
#    :; # do nothing
#else
#    insmod $jh_path/driver/jailhouse.ko
#    $jh_path/tools/jailhouse enable $jh_path/configs/arm64/schim-rootcol-dual-slave-cached.cell
#fi
#
## Configure SchIM acording to the experiment profile
#~/common/config_schim_tdma.out ${periods_1[1]} ${periods_2[1]} ${periods_3[1]} ${periods_4[1]} $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3

# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null


# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # Run synthetic benchmark with different priorities
    for (( j = 1; j < 5; j++ )); do
        # If not yet created, creates the destination directory
        mkdir -p $dest_dir/"period_${j}"
        # Create output raw data file
        touch ${dest_dir}/"period_${j}"/${i}_cores.csv
        # Generate and redirect data
        echo "Start - period ${j} - core ${i} | ${periods_1[j]} ${periods_2[j]} ${periods_3[j]} ${periods_4[j]}"
        ~/synthetic/threshold_bw_tdma.out ${periods_1[j]} ${periods_2[j]} ${periods_3[j]} ${periods_4[j]} > ${dest_dir}/"period_${j}"/${i}_cores.csv
    done
    # Kill one cell
    $jh_path/tools/jailhouse cell destroy $((i-1)) #>> /dev/null
done

# Run alone
# Run synthetic benchmark with different priorities
for (( j = 1; j < 5; j++ )); do
    # Create output raw data file
    touch ${dest_dir}/"period_${j}"/1_cores.csv
    # Generate and redirect data
    echo "Start - period ${j} - core ${i} | ${periods_1[j]} ${periods_2[j]} ${periods_3[j]} ${periods_4[j]}"
    ~/synthetic/threshold_bw_tdma.out ${periods_1[j]} ${periods_2[j]} ${periods_3[j]} ${periods_4[j]} > ${dest_dir}/"period_${j}"/1_cores.csv
done
