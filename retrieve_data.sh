# Import configuration
source deploy.config

# Aim at asking sudo right without printing anything
sudo printf ""

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/4_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/3_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/2_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_FP/1_cores.csv script/bw_comparisons/SchIM_FP/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/4_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/3_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/2_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TDMA/1_cores.csv script/bw_comparisons/SchIM_FP/

sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/4_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/3_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/2_cores.csv script/bw_comparisons/SchIM_FP/
sudo cp ${path_to_rootfs}/home/root/synthetic/SchIM_TS/1_cores.csv script/bw_comparisons/SchIM_FP/

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
