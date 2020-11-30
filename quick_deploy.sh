# Build custom programs
cd demo/
make clean # optional
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

# Build jailhouse-rt
## TODO

# Copy jailhouse-rt
# sudo cp -r jailhouse-rt/ $path_to_rootfs/home/root/

# Copy rootfs/ and boot/ to SD card
#cp boot/* $path_to_boot/
#sudo cp -r rootfs/ $path_to_root/

