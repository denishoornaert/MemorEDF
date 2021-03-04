#!/bin/bash
set -e

source ~/common/jailhouse.config

# Load experience variables
touch ~/experiences/profile.config
cp $1 ~/experiences/profile.config
source ~/experiences/profile.config

mkdir ${dest_dir}/

# Load colored Memory Bomb cells
~/common/load_col_bombs.sh
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh

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

# Run synthetic bench with different level of contention
for (( i = $((last_bomb+1)); i > 1; i-- )); do
    # Create output raw data file
    touch ${dest_dir}/${i}_cores.csv
    # Generate and redirect data
    ~/common/spam.out w > ${dest_dir}/${i}_cores.csv
    # Kill one cell
    ~/jailhouse-rt/tools/jailhouse cell destroy $((i-1))
done

# Run alone
# Create output raw data file
touch ${dest_dir}/1_cores.csv
# Generate and redirect data
~/common/spam.out w > ${dest_dir}/1_cores.csv
