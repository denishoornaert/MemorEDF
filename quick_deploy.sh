# Import configuration
source deploy.config

# Read command line options
arguments_list=("petalinux" "jailhouse" "programs" "petalinux-path" "boot-path" "root-path")
# read arguments
opts=$(getopt --longoptions "$(printf "%s:," "${arguments_list[@]}")" --name "$(basename "$0")" --options "" -- "$@")
eval set --$opts
# Go through all the commands
while true; do
    case "$1" in
    --petalinux)
        options=(`echo $2 | tr ',' ' '`)
        for i in "${options[@]}"; do declare ${1:2}"_"$i=true; done;;
    --jailhouse)
        options=(`echo $2 | tr ',' ' '`)
        for i in "${options[@]}"; do declare ${1:2}"_"$i=true; done;;
    --programs)
        options=(`echo $2 | tr ',' ' '`)
        for i in "${options[@]}"; do declare ${1:2}"_"$i=true; done;;
    --petalinux-path)
        path_to_petalinux=$2;;
    --boot-path)
        path_to_boot=$2;;
    --root-path)
        path_to_rootfs=$2;;
    --)
        break;;
    esac
    shift
    shift
done

if [[ $petalinux_clean ]]; then
    echo -e "${info}[SchIM Deploy] Cleaning the Petalinux project${norm}"
    # Clean petalinux
    current_path=`pwd`
    cd $path_to_petalinux
    cd $project
    petalinux-build -x mrproper
    cd $current_path
fi

if [[ $petalinux_build ]]; then
    echo "[SchIM Deploy] Buidling the Petalinux project"
    # Build petalinux
    current_path=`pwd`
    cd $path_to_petalinux
    cd $project
    petalinux-build
    cd $current_path
fi

if [[ $petalinux_package ]]; then
    echo "[SchIM Deploy] Packaging the Petalinux project"
    # package petalinux
    current_path=`pwd`/
    cd $path_to_petalinux
    cd $project
    petalinux-package --boot --fsbl $path_to_petalinux$project$fsbl --fpga $current_path$path_to_bitstream --pmufw $path_to_petalinux$project$pmufw --u-boot $path_to_petalinux$project$uboot --force
    cd $current_path
fi

if [[ $petalinux_copy ]]; then
    echo "[SchIM Deploy] Copying the Petalinux project to the SD-card"
    # Copy petalinux kernel
    ## To SD-card
    sudo cp $path_to_petalinux$project/images/linux/BOOT.BIN $path_to_boot
    sudo cp $path_to_petalinux$project/images/linux/Image $path_to_boot
    sudo cp $path_to_petalinux$project/images/linux/rootfs.cpio $path_to_rootfs
    ## To boot partition
    cp $path_to_petalinux$project/images/linux/BOOT.BIN boot/
    cp $path_to_petalinux$project/images/linux/Image boot/
    cp $path_to_petalinux$project/images/linux/system.dtb boot/
    ## Decompress .cpio
    current_path=`pwd`
    cd $path_to_rootfs
    sudo cpio -i < rootfs.cpio
    cd $current_path
fi

if [[ $programs_clean ]]; then
    echo "[SchIM Deploy] Cleaning the custom programs"
    # Clean custom programs
    cd demo/
    make clean
    cd ../
fi

if [[ $programs_build ]]; then
    echo "[SchIM Deploy] Building the custom programs"
    # Build custom programs
    cd demo/
    make
    cd ../
    # Copy the custom programs to rootfs/
    ## Configuration programs to common
    cp demo/exec/config_schim_tdma.out rootfs/common/
    cp demo/exec/config_schim_fp.out rootfs/common/
    cp demo/exec/config_schim_ts.out rootfs/common/
    ## Spam to synthetic
    cp demo/exec/spam_fake_colored.out rootfs/synthetic/
    ## Blast to benchmarks
    cp demo/exec/blast_fake_colored.out rootfs/benchmarks/
fi

if [[ $programs_copy ]]; then
    echo "[SchIM Deploy] Copying the custom programs to the SD-card"
    # Copy rootfs/ to SD card
    sudo cp -r rootfs/* $path_to_rootfs/home/root/
fi

if [[ $jailhouse_clean ]]; then
    echo "[SchIM Deploy] Cleaning the jailhouse-rt project"
    # Clean jailhouse-rt
    cd $path_to_jailhouse
    make clean
    cd ../
fi

if [[ $jailhouse_build ]]; then
    echo "[SchIM Deploy] Building the jailhouse-rt project"
    # Create necessary file
    touch $path_to_jailhouse/include/jailhouse/config.h
    printf "#define CONFIG_MACH_ZYNQMP_ZCU102 1\n#if CONFIG_MACH_ZYNQMP_ZCU102 == 1\n#define CONFIG_TRACE_ERROR 1\n#define CONFIG_ARM_GIC_V2 1\n#endif /* CONFIG_MACH_ZYNQMP_ZCU102 */\n" > $path_to_jailhouse/include/jailhouse/config.h
    # Build jailhouse-rt
    cd $path_to_jailhouse
    make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KDIR=$path_to_petalinux$project$kernel
    cd ../
fi

if [[ $jailhouse_copy ]]; then
    echo "[SchIM Deploy] Copying the jailhouse-rt project to the SD-card"
    # Copy jailhouse-rt
    sudo cp -r $path_to_jailhouse $path_to_rootfs/home/root/
fi
