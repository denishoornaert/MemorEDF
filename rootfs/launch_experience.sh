#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load experience variables
cp $1 ~/experiences/profile.config
source ~/experiences/profile.config

post_fix=""
# Configure SchIM acording to the experiment profile
if [ "$scheduling_policy" = "fp" ]; then
    ~/common/config_schim_"$scheduling_policy".out $priorities $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
    post_fix="${scheduling_policy}_${priorities}_${threshold_core_0}_${threshold_core_1}_${threshold_core_2}_${threshold_core_3}"
elif [ "$scheduling_policy" = "tdma" ]; then
    ~/common/config_schim_"$scheduling_policy".out $period_core_0 $period_core_1 $period_core_2 $period_core_3 $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
    post_fix="${scheduling_policy}_${period_core_0}_${period_core_1}_${period_core_2}_${period_core_3}_${threshold_core_0}_${threshold_core_1}_${threshold_core_2}_${threshold_core_3}"
elif [ "$scheduling_policy" = "ts" ]; then
    ~/common/config_schim_"$scheduling_policy".out $mit_core_0 $mit_core_1 $mit_core_2 $mit_core_3 $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
    post_fix="${scheduling_policy}_${mit_core_0}_${mit_core_1}_${mit_core_2}_${mit_core_3}_${threshold_core_0}_${threshold_core_1}_${threshold_core_2}_${threshold_core_3}"
elif [ "$scheduling_policy" = "NA" ]; then
    : # No policy is available: Do nothing
elif [ "$scheduling_policy" = "fibo" ]; then
    ~/common/config_schim_"$scheduling_policy".out $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
    post_fix="${scheduling_policy}_${threshold_core_0}_${threshold_core_1}_${threshold_core_2}_${threshold_core_3}"
elif [ "$scheduling_policy" = "gallois" ]; then
    ~/common/config_schim_"$scheduling_policy".out $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
    post_fix="${scheduling_policy}_${threshold_core_0}_${threshold_core_1}_${threshold_core_2}_${threshold_core_3}"
elif [ "$scheduling_policy" = "aging" ]; then
    ~/common/config_schim_"$scheduling_policy".out $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
    post_fix="${scheduling_policy}_${threshold_core_0}_${threshold_core_1}_${threshold_core_2}_${threshold_core_3}"
else
    echo "Invalid policy set in "${1}" ("${scheduling_policy}") -> Abort!"
    exit 1
fi

# Load the jailhouse root cell for SchIM
if (lsmod | grep "jailhouse" &> /dev/null)
then
    :; # do nothing
else
    insmod $jh_path/driver/jailhouse.ko
    jailhouse enable $jh_path/configs/arm64/schim-rootcol-dual-slave-cached.cell
fi

# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null
if [ "${type}" != "trace"]; then
    # If not yet created, creates the destination directory
    mkdir -p $dest_dir
fi

# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    if [ "${type}" == "synthetic" ]; then
        # Create output raw data file
        touch ${dest_dir}/${i}_cores.csv
        # Generate and redirect data
        ~/common/spam.out $core_0_target_address ${bombing_mode:0:1} ${samples} > ${dest_dir}/${i}_cores.csv
    if [ "${type}" == "trace" ]; then
        # Generate and redirect data
        ~/common/blast.out $core_0_target_address ${bombing_mode:0:1}
        # Exit loop
        ${i} = 0;
    elif [ "${type}" == "linux" ]; then
        # Start the fake Memory Bomb
        touch ~/${dest_dir}/${mode}/sdvbs_cores_${i}_${post_fix}.csv
        current_path=`pwd`
        cd ~/benchmarks/root-cell/
        ./run_all_sdvbs.sh ~/${dest_dir}/${mode}/sdvbs_cores_${i}_${post_fix}.csv
        cd ${current_path}
    else
        echo "Invalid type of experiments set in "${1}" ("${type}") -> Abort!"
        exit 1
    fi
    # Kill one cell
    jailhouse cell destroy $((i-1)) >> /dev/null
done

if [ "${type}" == "synthetic"]; then
    # Run alone
    # Create output raw data file
    touch ${dest_dir}/1_cores.csv
    # Generate and redirect data
    ~/common/spam.out ${core_0_target_address} ${bombing_mode:0:1} ${samples} > ${dest_dir}/1_cores.csv
elif [ "${type}" == "trace" ]; then
    jailhouse cell destroy 1 >> /dev/null
    jailhouse cell destroy 2 >> /dev/null
    jailhouse cell destroy 3 >> /dev/null
elif [ "${type}" == "linux" ]; then
    # Start the fake Memory Bomb
    touch ~/${dest_dir}/${mode}/sdvbs_cores_0_${post_fix}.csv
    current_path=`pwd`
    cd ~/benchmarks/root-cell/
    ./run_all_sdvbs.sh ~/${dest_dir}/${mode}/sdvbs_cores_0_${post_fix}.csv
    cd ${current_path}
fi
