# Import configuration
source deploy.config

# Aim at asking sudo right without printing anything
sudo printf ""

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/4_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/3_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/2_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/1_cores.csv script/bw_comparisons/SchIM_FP/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/4_cores.csv script/bw_comparisons/SchIM_TDMA/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/3_cores.csv script/bw_comparisons/SchIM_TDMA/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/2_cores.csv script/bw_comparisons/SchIM_TDMA/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/1_cores.csv script/bw_comparisons/SchIM_TDMA/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/4_cores.csv script/bw_comparisons/SchIM_TS/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/3_cores.csv script/bw_comparisons/SchIM_TS/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/2_cores.csv script/bw_comparisons/SchIM_TS/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/1_cores.csv script/bw_comparisons/SchIM_TS/

sudo cp ${path_to_rootfs}/home/root/synthetic/main_route/4_cores.csv script/bw_comparisons/main_route/
sudo cp ${path_to_rootfs}/home/root/synthetic/main_route/3_cores.csv script/bw_comparisons/main_route/
sudo cp ${path_to_rootfs}/home/root/synthetic/main_route/2_cores.csv script/bw_comparisons/main_route/
sudo cp ${path_to_rootfs}/home/root/synthetic/main_route/1_cores.csv script/bw_comparisons/main_route/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Aging/4_cores.csv script/bw_comparisons/SchIM_Aging/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Aging/3_cores.csv script/bw_comparisons/SchIM_Aging/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Aging/2_cores.csv script/bw_comparisons/SchIM_Aging/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Aging/1_cores.csv script/bw_comparisons/SchIM_Aging/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Fibo/4_cores.csv script/bw_comparisons/SchIM_Fibo/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Fibo/3_cores.csv script/bw_comparisons/SchIM_Fibo/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Fibo/2_cores.csv script/bw_comparisons/SchIM_Fibo/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Fibo/1_cores.csv script/bw_comparisons/SchIM_Fibo/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Gallois/4_cores.csv script/bw_comparisons/SchIM_Gallois/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Gallois/3_cores.csv script/bw_comparisons/SchIM_Gallois/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Gallois/2_cores.csv script/bw_comparisons/SchIM_Gallois/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_Gallois/1_cores.csv script/bw_comparisons/SchIM_Gallois/

sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_1/1_cores.csv script/threshold_bw/prio_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_1/2_cores.csv script/threshold_bw/prio_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_1/3_cores.csv script/threshold_bw/prio_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_1/4_cores.csv script/threshold_bw/prio_1/

sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_2/1_cores.csv script/threshold_bw/prio_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_2/2_cores.csv script/threshold_bw/prio_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_2/3_cores.csv script/threshold_bw/prio_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_2/4_cores.csv script/threshold_bw/prio_2/

sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_3/1_cores.csv script/threshold_bw/prio_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_3/2_cores.csv script/threshold_bw/prio_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_3/3_cores.csv script/threshold_bw/prio_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_3/4_cores.csv script/threshold_bw/prio_3/

sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_4/1_cores.csv script/threshold_bw/prio_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_4/2_cores.csv script/threshold_bw/prio_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_4/3_cores.csv script/threshold_bw/prio_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/prio_4/4_cores.csv script/threshold_bw/prio_4/

sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_1/1_cores.csv script/threshold_bw/mit_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_1/2_cores.csv script/threshold_bw/mit_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_1/3_cores.csv script/threshold_bw/mit_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_1/4_cores.csv script/threshold_bw/mit_1/

sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_2/1_cores.csv script/threshold_bw/mit_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_2/2_cores.csv script/threshold_bw/mit_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_2/3_cores.csv script/threshold_bw/mit_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_2/4_cores.csv script/threshold_bw/mit_2/

sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_3/1_cores.csv script/threshold_bw/mit_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_3/2_cores.csv script/threshold_bw/mit_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_3/3_cores.csv script/threshold_bw/mit_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_3/4_cores.csv script/threshold_bw/mit_3/

sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_4/1_cores.csv script/threshold_bw/mit_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_4/2_cores.csv script/threshold_bw/mit_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_4/3_cores.csv script/threshold_bw/mit_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/mit_4/4_cores.csv script/threshold_bw/mit_4/

sudo cp ${path_to_rootfs}/home/root/threshold/results/period_1/1_cores.csv script/threshold_bw/period_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_1/2_cores.csv script/threshold_bw/period_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_1/3_cores.csv script/threshold_bw/period_1/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_1/4_cores.csv script/threshold_bw/period_1/

sudo cp ${path_to_rootfs}/home/root/threshold/results/period_2/1_cores.csv script/threshold_bw/period_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_2/2_cores.csv script/threshold_bw/period_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_2/3_cores.csv script/threshold_bw/period_2/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_2/4_cores.csv script/threshold_bw/period_2/

sudo cp ${path_to_rootfs}/home/root/threshold/results/period_3/1_cores.csv script/threshold_bw/period_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_3/2_cores.csv script/threshold_bw/period_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_3/3_cores.csv script/threshold_bw/period_3/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_3/4_cores.csv script/threshold_bw/period_3/

sudo cp ${path_to_rootfs}/home/root/threshold/results/period_4/1_cores.csv script/threshold_bw/period_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_4/2_cores.csv script/threshold_bw/period_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_4/3_cores.csv script/threshold_bw/period_4/
sudo cp ${path_to_rootfs}/home/root/threshold/results/period_4/4_cores.csv script/threshold_bw/period_4/

sudo cp ${path_to_rootfs}/home/root/threshold/results/aging/1_cores.csv script/threshold_bw/aging/
sudo cp ${path_to_rootfs}/home/root/threshold/results/aging/2_cores.csv script/threshold_bw/aging/
sudo cp ${path_to_rootfs}/home/root/threshold/results/aging/3_cores.csv script/threshold_bw/aging/
sudo cp ${path_to_rootfs}/home/root/threshold/results/aging/4_cores.csv script/threshold_bw/aging/

sudo cp ${path_to_rootfs}/home/root/threshold/results/fibo/1_cores.csv script/threshold_bw/fibo/
sudo cp ${path_to_rootfs}/home/root/threshold/results/fibo/2_cores.csv script/threshold_bw/fibo/
sudo cp ${path_to_rootfs}/home/root/threshold/results/fibo/3_cores.csv script/threshold_bw/fibo/
sudo cp ${path_to_rootfs}/home/root/threshold/results/fibo/4_cores.csv script/threshold_bw/fibo/

sudo cp ${path_to_rootfs}/home/root/threshold/results/gallois/1_cores.csv script/threshold_bw/gallois/
sudo cp ${path_to_rootfs}/home/root/threshold/results/gallois/2_cores.csv script/threshold_bw/gallois/
sudo cp ${path_to_rootfs}/home/root/threshold/results/gallois/3_cores.csv script/threshold_bw/gallois/
sudo cp ${path_to_rootfs}/home/root/threshold/results/gallois/4_cores.csv script/threshold_bw/gallois/
