#!/bin/bash
set -e

source jailhouse.config

# Load experience variables
cp experiences/$1 experiences/profile.config
source experiences/profile.config

./get_jh.sh >> /dev/null

./jh.sh >> /dev/null

if [ "$scheduling_policy" = "fp" ]; then
    ./common/config_schim_"$scheduling_policy".out $priorities $threshold_core_0 $threshold_core_1 $threshold_core_2 $threshold_core_3
fi

./load_col_bombs.sh >> /dev/null

./bombs_"$bombing_mode".sh >> /dev/null

mkdir -p $dest_dir

for (( i = $((last_bomb+1)); i > 1; i-- )); do
    touch ${dest_dir}/${i}_cores.csv
    ./synthetic/spam_fake_colored.out $core_0_target_address ${bombing_mode:0:1} ${samples} > ${dest_dir}/${i}_cores.csv
    ${jh_path}/tools/jailhouse cell destroy $((i-1)) >> /dev/null
done
# Run alone
touch ${dest_dir}/1_cores.csv
./synthetic/spam_fake_colored.out ${core_0_target_address} ${bombing_mode:0:1} ${samples} > ${dest_dir}/1_cores.csv
