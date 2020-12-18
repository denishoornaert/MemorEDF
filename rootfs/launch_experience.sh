#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load experience variables
cp $1 ~/experiences/profile.config
source ~/experiences/profile.config

# Load the jailhouse root cell for SchIM
if (lsmod | grep "jailhouse" &> /dev/null)
then
    :; # do nothing
else
    insmod $jh_path/driver/jailhouse.ko
    jailhouse enable $jh_path/configs/arm64/schim-root.cell
fi

# Configure SchIM acording to the experiment profile
if [ "$scheduling_policy" = "fp" ]; then
    ~/common/config_schim_"$scheduling_policy".out $priorities $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
elif [ "$scheduling_policy" = "tdma" ]; then
    ~/common/config_schim_"$scheduling_policy".out $period_core_0 $period_core_1 $period_core_2 $period_core_3 $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
elif [ "$scheduling_policy" = "ts" ]; then
    ~/common/config_schim_"$scheduling_policy".out $mit_core_0 $mit_core_1 $mit_core_2 $mit_core_3 $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
elif [ "$scheduling_policy" = "NA" ]; then
    : # No policy is available: Do nothing
else
    echo "Invalid policy set in "${1}" ("${scheduling_policy}") -> Abort!"
    exit 1
fi

# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null
# If not yet created, creates the destination directory
mkdir -p $dest_dir

# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # Create output raw data file
    touch ${dest_dir}/${i}_cores.csv
    if [ "${type}" == "synthetic" ]; then
        # Generate and redirect data
        ~/synthetic/spam_fake_colored.out $core_0_target_address ${bombing_mode:0:1} ${samples} > ${dest_dir}/${i}_cores.csv
    elif [ "${type}" == "linux" ]; then
        # Start the linux inmate
        ~/common/linux-automated-dualport.sh
        # Start the fake Memory Bomb
        ~/synthetic/blast_fake_colored.out $core_0_target_address ${bombing_mode:0:1} ${samples}
    else
        echo "Invalid type of experiments set in "${1}" ("${type}") -> Abort!"
        exit 1
    fi
    # Kill one cell
    jailhouse cell destroy $((i-1)) >> /dev/null
done
# Run alone
# Create output raw data file
touch ${dest_dir}/1_cores.csv
# Generate and redirect data
~/synthetic/spam_fake_colored.out ${core_0_target_address} ${bombing_mode:0:1} ${samples} > ${dest_dir}/1_cores.csv
