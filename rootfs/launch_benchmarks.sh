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


# Load colored Memory Bomb cells
~/common/load_col_bombs.sh >> /dev/null
# Start Memory Bombs in either Read or Write mode
~/common/bombs_"$bombing_mode".sh >> /dev/null

# Creat dump folder
mkdir -p ~/${dest_dir}/${mode}/${scheduling_policy}

# Start the fake Memory Bomb
touch ~/${dest_dir}/${mode}/${scheduling_policy}/sdvbs_stress.csv
current_path=`pwd`
cd ~/benchmarks/root-cell/
bash run_all_sdvbs.sh ~/${dest_dir}/${mode}/${scheduling_policy}/sdvbs_stress.csv
cd ${current_path}


~/jailhouse-rt/tools/jailhouse cell destroy 1 >> /dev/null
~/jailhouse-rt/tools/jailhouse cell destroy 2 >> /dev/null
~/jailhouse-rt/tools/jailhouse cell destroy 3 >> /dev/null


# Start the fake Memory Bomb
touch ~/${dest_dir}/${mode}/${scheduling_policy}/sdvbs_solo.csv
current_path=`pwd`
cd ~/benchmarks/root-cell/
bash run_all_sdvbs.sh ~/${dest_dir}/${mode}/${scheduling_policy}/sdvbs_solo.csv
cd ${current_path}
