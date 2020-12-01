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

if [[ $programs_clean ]]; then
    # Clean custom programs
    cd demo/
    make clean
    cd ../
fi

if [[ $programs_build ]]; then
    # Build custom programs
    cd demo/
    make
    cd ../
    # Copy the custom programs to rootfs/
    # Configuration programs to common
    cp demo/exec/config_schim_tdma.out rootfs/common/
    cp demo/exec/config_schim_fp.out rootfs/common/
    cp demo/exec/config_schim_ts.out rootfs/common/
    # Spam to synthetic
    cp demo/exec/spam_fake_colored.out rootfs/synthetic/
    # Blast to benchmarks
    cp demo/exec/blast_fake_colored.out rootfs/benchmarks/
fi

if [[ $programs_copy ]]; then
    # Copy rootfs/ to SD card
    sudo cp -r rootfs/ $path_to_root/home/root/
fi

if [[ $jailhouse_clean ]]; then
    # Clean jailhouse-rt
    cd jailhouse-rt
    make clean
    cd ../
fi

if [[ $jailhouse_build ]]; then
    # Build jailhouse-rt
    cd jailhouse-rt
    make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- KDIR=$path_to_petalinux
    cd ../
fi

if [[ $jailhouse_copy ]]; then
    # Copy jailhouse-rt
    sudo cp -r jailhouse-rt/ $path_to_rootfs/home/root/
fi

# Copy boot/ to SD card
#cp boot/* $path_to_boot/
