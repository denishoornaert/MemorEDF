	.arch armv8-a
	.file	"asm-defines.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/include
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/include/generated
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor/include
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor/../include/arch/arm64
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor/../include
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm-common/include
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor
// -I /home/renato/MemorEDF/jailhouse-rt/hypervisor
// -imultiarch aarch64-linux-gnu -D __KERNEL__ -D __LINUX_COMPILER_TYPES_H
// -D KBUILD_BASENAME="asm_defines" -D KBUILD_MODNAME="asm_defines"
// -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/5/include
// -include /home/renato/MemorEDF/jailhouse-rt/include/jailhouse/config.h
// -MD /home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/.asm-defines.s.d
// /home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip /home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.s
// -g -Os -Wall -Wstrict-prototypes -Wtype-limits -Wmissing-declarations
// -Wmissing-prototypes -Werror -fno-strict-aliasing -fno-pic -fno-common
// -fno-stack-protector -fno-builtin-ffsl -fverbose-asm -Wformat-security
// options enabled:  -faggressive-loop-optimizations -falign-functions
// -falign-jumps -falign-labels -falign-loops -fauto-inc-dec
// -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
// -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
// -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
// -fchkp-use-static-bounds -fchkp-use-static-const-bounds
// -fchkp-use-wrappers -fcombine-stack-adjustments -fcompare-elim
// -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
// -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
// -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
// -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
// -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
// -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
// -findirect-inlining -finline -finline-atomics -finline-functions
// -finline-functions-called-once -finline-small-functions -fipa-cp
// -fipa-cp-alignment -fipa-icf -fipa-icf-functions -fipa-icf-variables
// -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
// -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
// -fmath-errno -fmerge-constants -fmerge-debug-strings
// -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
// -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
// -free -freg-struct-return -freorder-blocks -freorder-functions
// -frerun-cse-after-loop -fsched-critical-path-heuristic
// -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
// -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
// -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
// -fschedule-fusion -fschedule-insns2 -fsection-anchors
// -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
// -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt -fstdarg-opt
// -fstrict-overflow -fstrict-volatile-bitfields -fsync-libcalls
// -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
// -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
// -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
// -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
// -ftree-vrp -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
// -fverbose-asm -fzero-initialized-in-bss -mfix-cortex-a53-835769
// -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	common
	.type	common, %function
common:
.LFB45:
	.file 1 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c"
	.loc 1 22 0
	.cfi_startproc
	.loc 1 23 0
#APP
// 23 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_MAX_CPUS 48 __builtin_offsetof(struct jailhouse_header, max_cpus)	//
// 0 "" 2
	.loc 1 24 0
// 24 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_CORE_SIZE 8 __builtin_offsetof(struct jailhouse_header, core_size)	//
// 0 "" 2
	.loc 1 25 0
// 25 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_DEBUG_CONSOLE_VIRT 56 __builtin_offsetof(struct jailhouse_header, debug_console_base)	//
// 0 "" 2
	.loc 1 26 0
// 26 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_HYP_STUB_VERSION 72 __builtin_offsetof(struct jailhouse_header, arm_linux_hyp_abi)	//
// 0 "" 2
	.loc 1 27 0
// 27 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>SYSCONFIG_DEBUG_CONSOLE_PHYS 44 __builtin_offsetof(struct jailhouse_system, debug_console.address)	//
// 0 "" 2
	.loc 1 29 0
// 29 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>SYSCONFIG_HYPERVISOR_PHYS 12 __builtin_offsetof(struct jailhouse_system, hypervisor_memory.phys_start)	//
// 0 "" 2
	.loc 1 31 0
// 31 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>PERCPU_ID_AA64MMFR0 4192 __builtin_offsetof(struct per_cpu, id_aa64mmfr0)	//
// 0 "" 2
	.loc 1 32 0
// 32 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>
// 0 "" 2
	.loc 1 34 0
// 34 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>PERCPU_STACK_END 4096 __builtin_offsetof(struct per_cpu, stack) + FIELD_SIZEOF(struct per_cpu, stack)	//
// 0 "" 2
	.loc 1 37 0
// 37 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>PERCPU_SIZE_ASM 16384 sizeof(struct per_cpu)	//
// 0 "" 2
	.loc 1 38 0
// 38 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>CPU_STAT_VMEXITS_TOTAL 280375465160720 LOCAL_CPU_BASE + __builtin_offsetof(struct per_cpu, public.stats[JAILHOUSE_CPU_STAT_VMEXITS_TOTAL])	//
// 0 "" 2
	.loc 1 41 0
// 41 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>CPU_STAT_VMEXITS_SMCCC 280375465160752 LOCAL_CPU_BASE + __builtin_offsetof(struct per_cpu, public.stats[JAILHOUSE_CPU_STAT_VMEXITS_SMCCC])	//
// 0 "" 2
	.loc 1 44 0
// 44 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>
// 0 "" 2
	.loc 1 46 0
// 46 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>DCACHE_CLEAN_ASM 0 DCACHE_CLEAN	//
// 0 "" 2
	.loc 1 47 0
// 47 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>DCACHE_INVALIDATE_ASM 1 DCACHE_INVALIDATE	//
// 0 "" 2
	.loc 1 48 0
// 48 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c" 1
	
=>DCACHE_CLEAN_AND_INVALIDATE_ASM 2 DCACHE_CLEAN_AND_INVALIDATE	//
// 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE45:
	.size	common, .-common
.Letext0:
	.file 2 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/include/jailhouse/types.h"
	.file 3 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/include/asm/processor.h"
	.file 4 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/include/asm/paging.h"
	.file 5 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/../include/jailhouse/console.h"
	.file 6 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/../include/jailhouse/cell-config.h"
	.file 7 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/include/jailhouse/paging.h"
	.file 8 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm-common/include/asm/dcaches.h"
	.file 9 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/include/jailhouse/mmio.h"
	.file 10 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm-common/include/asm/cell.h"
	.file 11 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/include/jailhouse/pci.h"
	.file 12 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/include/jailhouse/cell.h"
	.file 13 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/include/asm/spinlock.h"
	.file 14 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/../include/arch/arm64/../arm-common/asm/jailhouse_hypercall.h"
	.file 15 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/include/jailhouse/percpu.h"
	.file 16 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm-common/include/asm/irqchip.h"
	.file 17 "/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/include/asm/memguard-data.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe3a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0xc
	.4byte	.LASF198
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.4byte	0x42
	.byte	0x2
	.byte	0x16
	.4byte	0x42
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x29
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x10
	.byte	0x2
	.byte	0x19
	.4byte	0x79
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x2
	.byte	0x1b
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1f
	.4byte	0x80
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	0x79
	.4byte	0x90
	.uleb128 0x9
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0xa
	.string	"u8"
	.byte	0x2
	.byte	0x23
	.4byte	0xa8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0xa
	.string	"u16"
	.byte	0x2
	.byte	0x26
	.4byte	0xc1
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.string	"u32"
	.byte	0x2
	.byte	0x29
	.4byte	0x42
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0xa
	.string	"u64"
	.byte	0x2
	.byte	0x2c
	.4byte	0xec
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2f
	.4byte	0x9e
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x32
	.4byte	0xb6
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0x35
	.4byte	0xcf
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0x38
	.4byte	0xe1
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x4
	.4byte	0x42
	.byte	0x8
	.byte	0x13
	.4byte	0x142
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.2byte	0x100
	.byte	0x3
	.byte	0x1c
	.4byte	0x164
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x22
	.4byte	0x79
	.byte	0
	.uleb128 0xe
	.string	"usr"
	.byte	0x3
	.byte	0x23
	.4byte	0x164
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x79
	.4byte	0x174
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF106
	.2byte	0x100
	.byte	0x3
	.byte	0x1b
	.4byte	0x187
	.uleb128 0x10
	.4byte	0x142
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0xb4
	.4byte	0x192
	.uleb128 0x11
	.byte	0x8
	.4byte	0xe1
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x20
	.byte	0x5
	.byte	0x59
	.4byte	0x202
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x5a
	.4byte	0x114
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0x5b
	.4byte	0x109
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x5c
	.4byte	0xfe
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x5d
	.4byte	0xfe
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5e
	.4byte	0x109
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x5f
	.4byte	0x109
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.byte	0x60
	.4byte	0x114
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x88
	.byte	0x6
	.byte	0x53
	.4byte	0x2e6
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x6
	.byte	0x54
	.4byte	0x2e6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x6
	.byte	0x55
	.4byte	0xfe
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x57
	.4byte	0x2f6
	.byte	0x8
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.byte	0x58
	.4byte	0x109
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x6
	.byte	0x59
	.4byte	0x109
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x5b
	.4byte	0x109
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x5c
	.4byte	0x109
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x5d
	.4byte	0x109
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5e
	.4byte	0x109
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5f
	.4byte	0x109
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x6
	.byte	0x60
	.4byte	0x109
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x6
	.byte	0x61
	.4byte	0x109
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x6
	.byte	0x62
	.4byte	0x109
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x6
	.byte	0x64
	.4byte	0x109
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x6
	.byte	0x66
	.4byte	0x114
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x6
	.byte	0x67
	.4byte	0x109
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x6
	.byte	0x68
	.4byte	0x114
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x6
	.byte	0x6a
	.4byte	0x1a1
	.byte	0x68
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x2f6
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x306
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x38
	.byte	0x6
	.byte	0xcb
	.4byte	0x3e5
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x6
	.byte	0xcc
	.4byte	0xf3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x6
	.byte	0xcd
	.4byte	0xf3
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x6
	.byte	0xce
	.4byte	0xfe
	.byte	0x2
	.uleb128 0xe
	.string	"bdf"
	.byte	0x6
	.byte	0xcf
	.4byte	0xfe
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x6
	.byte	0xd0
	.4byte	0x3e5
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x6
	.byte	0xd1
	.4byte	0xfe
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x6
	.byte	0xd2
	.4byte	0xfe
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x6
	.byte	0xd3
	.4byte	0xf3
	.byte	0x22
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd4
	.4byte	0xf3
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x23
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd5
	.4byte	0xf3
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd6
	.4byte	0xfe
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd7
	.4byte	0xfe
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.4byte	0x114
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x6
	.byte	0xda
	.4byte	0x109
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x6
	.byte	0xdc
	.4byte	0xf3
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x6
	.byte	0xde
	.4byte	0xf3
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe0
	.4byte	0xfe
	.byte	0x36
	.byte	0
	.uleb128 0x8
	.4byte	0x109
	.4byte	0x3f5
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x7
	.byte	0x57
	.4byte	0x187
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x50
	.byte	0x7
	.byte	0x5d
	.4byte	0x485
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x7
	.byte	0x60
	.4byte	0x42
	.byte	0
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x7
	.byte	0x69
	.4byte	0x499
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x7
	.byte	0x73
	.4byte	0x4b3
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0x7b
	.4byte	0x4ce
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x7
	.byte	0x85
	.4byte	0x4e8
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x7
	.byte	0x8e
	.4byte	0x4fd
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x7
	.byte	0x95
	.4byte	0x513
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x7
	.byte	0x9e
	.4byte	0x4fd
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x7
	.byte	0xa4
	.4byte	0x524
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x7
	.byte	0xac
	.4byte	0x539
	.byte	0x48
	.byte	0
	.uleb128 0x14
	.4byte	0x187
	.4byte	0x499
	.uleb128 0x15
	.4byte	0x3f5
	.uleb128 0x15
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x485
	.uleb128 0x14
	.4byte	0x49
	.4byte	0x4b3
	.uleb128 0x15
	.4byte	0x187
	.uleb128 0x15
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x49f
	.uleb128 0x16
	.4byte	0x4ce
	.uleb128 0x15
	.4byte	0x187
	.uleb128 0x15
	.4byte	0x79
	.uleb128 0x15
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4b9
	.uleb128 0x14
	.4byte	0x79
	.4byte	0x4e8
	.uleb128 0x15
	.4byte	0x187
	.uleb128 0x15
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4d4
	.uleb128 0x14
	.4byte	0x79
	.4byte	0x4fd
	.uleb128 0x15
	.4byte	0x187
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4ee
	.uleb128 0x16
	.4byte	0x513
	.uleb128 0x15
	.4byte	0x187
	.uleb128 0x15
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x503
	.uleb128 0x16
	.4byte	0x524
	.uleb128 0x15
	.4byte	0x187
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x519
	.uleb128 0x14
	.4byte	0x49
	.4byte	0x539
	.uleb128 0x15
	.4byte	0x3f5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x52a
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x18
	.byte	0x7
	.byte	0xb0
	.4byte	0x570
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x7
	.byte	0xb2
	.4byte	0x49
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x7
	.byte	0xb5
	.4byte	0x570
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x7
	.byte	0xb8
	.4byte	0x3f5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x576
	.uleb128 0x17
	.4byte	0x400
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x4
	.4byte	0xc8
	.byte	0x9
	.byte	0x89
	.4byte	0x59e
	.uleb128 0x18
	.4byte	.LASF84
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0x18
	.byte	0x9
	.byte	0x8c
	.4byte	0x5db
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x9
	.byte	0x8f
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.byte	0x91
	.4byte	0x42
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x9
	.byte	0x93
	.4byte	0x49
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x9
	.byte	0x95
	.4byte	0x79
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x9
	.byte	0x9f
	.4byte	0x5e6
	.uleb128 0x11
	.byte	0x8
	.4byte	0x5ec
	.uleb128 0x14
	.4byte	0x57b
	.4byte	0x600
	.uleb128 0x15
	.4byte	0x19f
	.uleb128 0x15
	.4byte	0x600
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x59e
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x10
	.byte	0x9
	.byte	0xa2
	.4byte	0x62b
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x9
	.byte	0xa4
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.byte	0xa6
	.4byte	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x10
	.byte	0x9
	.byte	0xaa
	.4byte	0x650
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x9
	.byte	0xac
	.4byte	0x5db
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x9
	.byte	0xae
	.4byte	0x19f
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.4byte	0x671
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0xa
	.byte	0x1b
	.4byte	0x9e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1c
	.4byte	0x676
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF139
	.uleb128 0x11
	.byte	0x8
	.4byte	0x671
	.uleb128 0x1b
	.byte	0x18
	.byte	0xa
	.byte	0x19
	.4byte	0x69b
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0xa
	.byte	0x1d
	.4byte	0x650
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0xa
	.byte	0x20
	.4byte	0x53f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0xb0
	.byte	0xa
	.byte	0x14
	.4byte	0x6c5
	.uleb128 0xe
	.string	"mm"
	.byte	0xa
	.byte	0x15
	.4byte	0x53f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xa
	.byte	0x17
	.4byte	0x6c5
	.byte	0x18
	.uleb128 0x1d
	.4byte	0x67c
	.byte	0x98
	.byte	0
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0x6d5
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.byte	0xa
	.byte	0xb
	.byte	0x48
	.4byte	0x73e
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xb
	.byte	0x49
	.4byte	0xb6
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0xb
	.byte	0x4a
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0xb
	.byte	0x4b
	.4byte	0xb6
	.byte	0x2
	.byte	0x3
	.byte	0xc
	.byte	0x2
	.uleb128 0x1e
	.string	"mme"
	.byte	0xb
	.byte	0x4c
	.4byte	0xb6
	.byte	0x2
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0xb
	.byte	0x4d
	.4byte	0xb6
	.byte	0x2
	.byte	0x9
	.byte	0
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xb
	.byte	0x4e
	.4byte	0xcf
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0xb
	.byte	0x4f
	.4byte	0xb6
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.byte	0xe
	.byte	0xb
	.byte	0x51
	.4byte	0x76b
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xb
	.byte	0x52
	.4byte	0xcf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xb
	.byte	0x53
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0xb
	.byte	0x54
	.4byte	0xb6
	.byte	0xc
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF107
	.byte	0x10
	.byte	0xb
	.byte	0x46
	.4byte	0x799
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0xb
	.byte	0x50
	.4byte	0x6d5
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0xb
	.byte	0x55
	.4byte	0x73e
	.uleb128 0x20
	.string	"raw"
	.byte	0xb
	.byte	0x56
	.4byte	0x799
	.byte	0
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0x7a9
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0xb
	.byte	0x5d
	.4byte	0x7eb
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xb
	.byte	0x5e
	.4byte	0xb6
	.byte	0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0xb
	.byte	0x5f
	.4byte	0xb6
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0xb
	.byte	0x60
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0xb
	.byte	0x61
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x4
	.byte	0xb
	.byte	0x5b
	.4byte	0x808
	.uleb128 0x10
	.4byte	0x7a9
	.uleb128 0x20
	.string	"raw"
	.byte	0xb
	.byte	0x63
	.4byte	0xcf
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0xb
	.byte	0x6c
	.4byte	0x847
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xb
	.byte	0x6d
	.4byte	0xe1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0xb
	.byte	0x6e
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0xb
	.byte	0x6f
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0xb
	.byte	0x70
	.4byte	0xcf
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0xc
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF115
	.byte	0x10
	.byte	0xb
	.byte	0x6a
	.4byte	0x864
	.uleb128 0x10
	.4byte	0x808
	.uleb128 0x20
	.string	"raw"
	.byte	0xb
	.byte	0x72
	.4byte	0x799
	.byte	0
	.uleb128 0x21
	.4byte	.LASF116
	.2byte	0x158
	.byte	0xb
	.byte	0x7b
	.4byte	0x8de
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0xb
	.byte	0x7d
	.4byte	0x8de
	.byte	0
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0xb
	.byte	0x7f
	.4byte	0x9b9
	.byte	0x8
	.uleb128 0xe
	.string	"bar"
	.byte	0xb
	.byte	0x81
	.4byte	0x9bf
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0xb
	.byte	0x84
	.4byte	0x76b
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0xb
	.byte	0x87
	.4byte	0x7eb
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0xb
	.byte	0x89
	.4byte	0x9d4
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0xb
	.byte	0x8b
	.4byte	0x9da
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0xb
	.byte	0x8d
	.4byte	0x9da
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0xb
	.byte	0x8f
	.4byte	0x9e0
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x8e4
	.uleb128 0x17
	.4byte	0x306
	.uleb128 0x21
	.4byte	.LASF118
	.2byte	0x2000
	.byte	0xc
	.byte	0x1a
	.4byte	0x9b9
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0xc
	.byte	0x20
	.4byte	0xae6
	.byte	0
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0xc
	.byte	0x24
	.4byte	0x69b
	.2byte	0x1000
	.uleb128 0x22
	.4byte	.LASF127
	.byte	0xc
	.byte	0x28
	.4byte	0x42
	.2byte	0x10b0
	.uleb128 0x22
	.4byte	.LASF128
	.byte	0xc
	.byte	0x2a
	.4byte	0xb17
	.2byte	0x10b8
	.uleb128 0x22
	.4byte	.LASF24
	.byte	0xc
	.byte	0x2d
	.4byte	0xb1d
	.2byte	0x10c0
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0xc
	.byte	0x2f
	.4byte	0x54
	.2byte	0x10c8
	.uleb128 0x22
	.4byte	.LASF130
	.byte	0xc
	.byte	0x32
	.4byte	0x49
	.2byte	0x10d8
	.uleb128 0x22
	.4byte	.LASF131
	.byte	0xc
	.byte	0x35
	.4byte	0x9b9
	.2byte	0x10e0
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0xc
	.byte	0x38
	.4byte	0xb23
	.2byte	0x10e8
	.uleb128 0x22
	.4byte	.LASF133
	.byte	0xc
	.byte	0x3c
	.4byte	0xa11
	.2byte	0x10f0
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0xc
	.byte	0x3f
	.4byte	0xb29
	.2byte	0x10f8
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0xc
	.byte	0x41
	.4byte	0xb2e
	.2byte	0x1100
	.uleb128 0x22
	.4byte	.LASF136
	.byte	0xc
	.byte	0x43
	.4byte	0xb34
	.2byte	0x1108
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0xc
	.byte	0x45
	.4byte	0x42
	.2byte	0x1110
	.uleb128 0x22
	.4byte	.LASF138
	.byte	0xc
	.byte	0x47
	.4byte	0x42
	.2byte	0x1114
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x8e9
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0x9cf
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.uleb128 0x11
	.byte	0x8
	.4byte	0x9cf
	.uleb128 0x11
	.byte	0x8
	.4byte	0x847
	.uleb128 0x8
	.4byte	0x847
	.4byte	0x9f0
	.uleb128 0x9
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0xd
	.byte	0x1b
	.4byte	0xa11
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0xd
	.byte	0x1c
	.4byte	0xb6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0xd
	.byte	0x1d
	.4byte	0xb6
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF141
	.byte	0xd
	.byte	0x1e
	.4byte	0x9f0
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x64
	.byte	0xe
	.byte	0x32
	.4byte	0xad1
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0xe
	.byte	0x33
	.4byte	0x2e6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0xe
	.byte	0x33
	.4byte	0xfe
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0xe
	.byte	0x33
	.4byte	0xad1
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0xe
	.byte	0x33
	.4byte	0xad1
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0xe
	.byte	0x33
	.4byte	0xad1
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0xe
	.byte	0x33
	.4byte	0x109
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xe
	.byte	0x33
	.4byte	0x1a1
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0xe
	.byte	0x33
	.4byte	0x114
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0xe
	.byte	0x34
	.4byte	0xf3
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xe
	.byte	0x35
	.4byte	0xad6
	.byte	0x41
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0xe
	.byte	0x36
	.4byte	0x114
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF149
	.byte	0xe
	.byte	0x37
	.4byte	0x114
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF150
	.byte	0xe
	.byte	0x38
	.4byte	0x114
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0xe
	.byte	0x39
	.4byte	0x109
	.byte	0x60
	.byte	0
	.uleb128 0x23
	.4byte	0x109
	.uleb128 0x8
	.4byte	0xf3
	.4byte	0xae6
	.uleb128 0x9
	.4byte	0x90
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.2byte	0x1000
	.byte	0xc
	.byte	0x1b
	.4byte	0xb06
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0xc
	.byte	0x1d
	.4byte	0xa1c
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0xc
	.byte	0x1f
	.4byte	0xb06
	.byte	0
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xb17
	.uleb128 0x25
	.4byte	0x90
	.2byte	0xfff
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x202
	.uleb128 0x11
	.byte	0x8
	.4byte	0x54
	.uleb128 0x11
	.byte	0x8
	.4byte	0x864
	.uleb128 0x23
	.4byte	0x79
	.uleb128 0x11
	.byte	0x8
	.4byte	0x606
	.uleb128 0x11
	.byte	0x8
	.4byte	0x62b
	.uleb128 0x21
	.4byte	.LASF152
	.2byte	0x4000
	.byte	0xf
	.byte	0x42
	.4byte	0xb8f
	.uleb128 0x1d
	.4byte	0xde9
	.byte	0
	.uleb128 0x22
	.4byte	.LASF153
	.byte	0xf
	.byte	0x4f
	.4byte	0x53f
	.2byte	0x1000
	.uleb128 0x22
	.4byte	.LASF154
	.byte	0xf
	.byte	0x51
	.4byte	0x49
	.2byte	0x1018
	.uleb128 0x22
	.4byte	.LASF155
	.byte	0xf
	.byte	0x51
	.4byte	0xce2
	.2byte	0x1020
	.uleb128 0x22
	.4byte	.LASF156
	.byte	0xf
	.byte	0x51
	.4byte	0x79
	.2byte	0x1060
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0xf
	.byte	0x54
	.4byte	0xb8f
	.2byte	0x2000
	.byte	0
	.uleb128 0x21
	.4byte	.LASF158
	.2byte	0x2000
	.byte	0xf
	.byte	0x1f
	.4byte	0xc80
	.uleb128 0x7
	.4byte	.LASF159
	.byte	0xf
	.byte	0x22
	.4byte	0xb06
	.byte	0
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0xf
	.byte	0x25
	.4byte	0x42
	.2byte	0x1000
	.uleb128 0x22
	.4byte	.LASF118
	.byte	0xf
	.byte	0x27
	.4byte	0x9b9
	.2byte	0x1008
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0xf
	.byte	0x2a
	.4byte	0xda0
	.2byte	0x1010
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0xf
	.byte	0x31
	.4byte	0xc8
	.2byte	0x1034
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0xf
	.byte	0x34
	.4byte	0x49
	.2byte	0x1038
	.uleb128 0x22
	.4byte	.LASF164
	.byte	0xf
	.byte	0x37
	.4byte	0xdb0
	.2byte	0x103c
	.uleb128 0x22
	.4byte	.LASF165
	.byte	0xf
	.byte	0x39
	.4byte	0xdb0
	.2byte	0x1040
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0xf
	.byte	0x3c
	.4byte	0x49
	.2byte	0x1044
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0xf
	.byte	0x3e
	.4byte	0x79
	.2byte	0x1048
	.uleb128 0x26
	.4byte	0xd81
	.2byte	0x1050
	.uleb128 0x22
	.4byte	.LASF168
	.byte	0xf
	.byte	0x3e
	.4byte	0xc80
	.2byte	0x1060
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0xf
	.byte	0x3e
	.4byte	0xa11
	.2byte	0x146c
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0xf
	.byte	0x3e
	.4byte	0xdb0
	.2byte	0x1470
	.uleb128 0x22
	.4byte	.LASF171
	.byte	0xf
	.byte	0x3e
	.4byte	0x49
	.2byte	0x1474
	.uleb128 0x22
	.4byte	.LASF172
	.byte	0xf
	.byte	0x3e
	.4byte	0x49
	.2byte	0x1478
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0xf
	.byte	0x3e
	.4byte	0x79
	.2byte	0x1480
	.uleb128 0x22
	.4byte	.LASF174
	.byte	0xf
	.byte	0x3e
	.4byte	0x79
	.2byte	0x1488
	.byte	0
	.uleb128 0x21
	.4byte	.LASF168
	.2byte	0x40c
	.byte	0x10
	.byte	0x46
	.4byte	0xccd
	.uleb128 0x7
	.4byte	.LASF175
	.byte	0x10
	.byte	0x48
	.4byte	0xa11
	.byte	0
	.uleb128 0x7
	.4byte	.LASF176
	.byte	0x10
	.byte	0x49
	.4byte	0xccd
	.byte	0x4
	.uleb128 0x22
	.4byte	.LASF177
	.byte	0x10
	.byte	0x4b
	.4byte	0xccd
	.2byte	0x204
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x10
	.byte	0x4c
	.4byte	0x42
	.2byte	0x404
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x10
	.byte	0x4e
	.4byte	0xcdd
	.2byte	0x408
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xcdd
	.uleb128 0x9
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x23
	.4byte	0x42
	.uleb128 0x6
	.4byte	.LASF155
	.byte	0x40
	.byte	0x11
	.byte	0x4
	.4byte	0xd5b
	.uleb128 0x7
	.4byte	.LASF180
	.byte	0x11
	.byte	0x5
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF181
	.byte	0x11
	.byte	0x6
	.4byte	0x79
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF182
	.byte	0x11
	.byte	0x7
	.4byte	0x79
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF183
	.byte	0x11
	.byte	0x8
	.4byte	0x79
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF184
	.byte	0x11
	.byte	0x9
	.4byte	0x79
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x11
	.byte	0xa
	.4byte	0x79
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF185
	.byte	0x11
	.byte	0xb
	.4byte	0x49
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF186
	.byte	0x11
	.byte	0xc
	.4byte	0x49
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF187
	.byte	0x11
	.byte	0xd
	.4byte	0xd5b
	.byte	0x38
	.byte	0
	.uleb128 0x23
	.4byte	0x9e
	.uleb128 0x19
	.byte	0x10
	.byte	0xf
	.byte	0x3e
	.4byte	0xd81
	.uleb128 0x7
	.4byte	.LASF188
	.byte	0xf
	.byte	0x3e
	.4byte	0x19f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF189
	.byte	0xf
	.byte	0x3e
	.4byte	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.byte	0x10
	.byte	0xf
	.byte	0x3e
	.4byte	0xda0
	.uleb128 0x1c
	.4byte	.LASF190
	.byte	0xf
	.byte	0x3e
	.4byte	0x49
	.uleb128 0x1c
	.4byte	.LASF191
	.byte	0xf
	.byte	0x3e
	.4byte	0xd60
	.byte	0
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0xdb0
	.uleb128 0x9
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.4byte	0x49
	.uleb128 0xd
	.2byte	0x1000
	.byte	0xf
	.byte	0x47
	.4byte	0xdd8
	.uleb128 0x7
	.4byte	.LASF192
	.byte	0xf
	.byte	0x48
	.4byte	0xdd8
	.byte	0
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0xf
	.byte	0x4a
	.4byte	0x174
	.2byte	0xf00
	.byte	0
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xde9
	.uleb128 0x25
	.4byte	0x90
	.2byte	0xeff
	.byte	0
	.uleb128 0x24
	.2byte	0x1000
	.byte	0xf
	.byte	0x44
	.4byte	0xe03
	.uleb128 0x1c
	.4byte	.LASF194
	.byte	0xf
	.byte	0x46
	.4byte	0xb06
	.uleb128 0x10
	.4byte	0xdb5
	.byte	0
	.uleb128 0x27
	.4byte	.LASF199
	.byte	0x1
	.byte	0x15
	.8byte	.LFB45
	.8byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF195
	.byte	0x7
	.byte	0xc9
	.4byte	0x79
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xe32
	.uleb128 0x29
	.byte	0
	.uleb128 0x28
	.4byte	.LASF196
	.byte	0xf
	.byte	0x87
	.4byte	0xe27
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"shmem_protocol"
.LASF101:
	.string	"padding"
.LASF171:
	.string	"reset"
.LASF33:
	.string	"jailhouse_cell_desc"
.LASF37:
	.string	"cpu_set_size"
.LASF167:
	.string	"mpidr"
.LASF68:
	.string	"page_size"
.LASF124:
	.string	"msix_vector_array"
.LASF57:
	.string	"msi_64bits"
.LASF35:
	.string	"revision"
.LASF198:
	.string	"/home/renato/MemorEDF/jailhouse-rt/hypervisor/arch/arm64/asm-defines.c"
.LASF28:
	.string	"type"
.LASF154:
	.string	"smccc_has_workaround_1"
.LASF42:
	.string	"num_pci_devices"
.LASF197:
	.string	"GNU C11 5.4.0 20160609 -mlittle-endian -mabi=lp64 -g -Os -fno-strict-aliasing -fno-pic -fno-common -fno-stack-protector -fno-builtin-ffsl"
.LASF13:
	.string	"long long unsigned int"
.LASF15:
	.string	"__u16"
.LASF2:
	.string	"max_cpu_id"
.LASF22:
	.string	"pt_entry_t"
.LASF113:
	.string	"masked"
.LASF62:
	.string	"shmem_regions_start"
.LASF131:
	.string	"next"
.LASF85:
	.string	"MMIO_UNHANDLED"
.LASF25:
	.string	"jailhouse_console"
.LASF54:
	.string	"caps_start"
.LASF12:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF193:
	.string	"guest_regs"
.LASF48:
	.string	"msg_reply_timeout"
.LASF31:
	.string	"gate_nr"
.LASF94:
	.string	"function"
.LASF123:
	.string	"msix_vectors"
.LASF21:
	.string	"__padding"
.LASF47:
	.string	"num_memory_regions_colored"
.LASF134:
	.string	"mmio_generation"
.LASF51:
	.string	"iommu"
.LASF186:
	.string	"time_overrun"
.LASF184:
	.string	"budget_memory"
.LASF140:
	.string	"owner"
.LASF82:
	.string	"dcache_flush"
.LASF87:
	.string	"mmio_access"
.LASF161:
	.string	"stats"
.LASF141:
	.string	"spinlock_t"
.LASF169:
	.string	"control_lock"
.LASF190:
	.string	"gicc_initialized"
.LASF102:
	.string	"enable"
.LASF178:
	.string	"head"
.LASF40:
	.string	"num_irqchips"
.LASF58:
	.string	"msi_maskable"
.LASF136:
	.string	"mmio_handlers"
.LASF182:
	.string	"pmu_evt_cnt"
.LASF181:
	.string	"last_time"
.LASF66:
	.string	"page_table_t"
.LASF39:
	.string	"num_cache_regions"
.LASF34:
	.string	"signature"
.LASF174:
	.string	"cpu_on_context"
.LASF114:
	.string	"reserved"
.LASF32:
	.string	"clock_reg"
.LASF60:
	.string	"msix_region_size"
.LASF89:
	.string	"value"
.LASF143:
	.string	"cell_state"
.LASF187:
	.string	"block"
.LASF4:
	.string	"unsigned int"
.LASF130:
	.string	"loadable"
.LASF53:
	.string	"bar_mask"
.LASF14:
	.string	"__u8"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"__u32"
.LASF149:
	.string	"gicc_base"
.LASF111:
	.string	"fmask"
.LASF36:
	.string	"name"
.LASF45:
	.string	"vpci_irq_base"
.LASF106:
	.string	"registers"
.LASF59:
	.string	"num_msix_vectors"
.LASF86:
	.string	"MMIO_HANDLED"
.LASF105:
	.string	"data"
.LASF27:
	.string	"size"
.LASF11:
	.string	"short unsigned int"
.LASF107:
	.string	"pci_msi_registers"
.LASF176:
	.string	"irqs"
.LASF191:
	.string	"gicr"
.LASF98:
	.string	"iomm"
.LASF52:
	.string	"domain"
.LASF126:
	.string	"arch"
.LASF199:
	.string	"common"
.LASF74:
	.string	"set_next_pt"
.LASF179:
	.string	"tail"
.LASF44:
	.string	"num_stream_ids"
.LASF8:
	.string	"bool"
.LASF115:
	.string	"pci_msix_vector"
.LASF72:
	.string	"get_phys"
.LASF138:
	.string	"max_mmio_regions"
.LASF120:
	.string	"msix_registers"
.LASF38:
	.string	"num_memory_regions"
.LASF112:
	.string	"pci_msix_registers"
.LASF100:
	.string	"irq_bitmap"
.LASF88:
	.string	"is_write"
.LASF188:
	.string	"base"
.LASF163:
	.string	"failed"
.LASF108:
	.string	"msg32"
.LASF43:
	.string	"num_pci_caps"
.LASF96:
	.string	"entries"
.LASF6:
	.string	"sizetype"
.LASF135:
	.string	"mmio_locations"
.LASF26:
	.string	"address"
.LASF99:
	.string	"arch_cell"
.LASF81:
	.string	"root_table"
.LASF79:
	.string	"hv_paging"
.LASF146:
	.string	"pci_mmconfig_base"
.LASF166:
	.string	"flush_vcpu_caches"
.LASF121:
	.string	"ivshmem_endpoint"
.LASF119:
	.string	"msi_registers"
.LASF157:
	.string	"public"
.LASF93:
	.string	"mmio_region_handler"
.LASF164:
	.string	"suspend_cpu"
.LASF19:
	.string	"DCACHE_INVALIDATE"
.LASF73:
	.string	"get_flags"
.LASF170:
	.string	"wait_for_poweron"
.LASF97:
	.string	"iommu_pvu"
.LASF153:
	.string	"pg_structs"
.LASF196:
	.string	"__page_pool"
.LASF63:
	.string	"shmem_dev_id"
.LASF80:
	.string	"root_paging"
.LASF24:
	.string	"cpu_set"
.LASF110:
	.string	"ignore"
.LASF18:
	.string	"DCACHE_CLEAN"
.LASF9:
	.string	"unsigned char"
.LASF67:
	.string	"paging"
.LASF129:
	.string	"small_cpu_set"
.LASF192:
	.string	"__fill"
.LASF10:
	.string	"short int"
.LASF117:
	.string	"info"
.LASF84:
	.string	"MMIO_ERROR"
.LASF1:
	.string	"false"
.LASF195:
	.string	"page_offset"
.LASF70:
	.string	"entry_valid"
.LASF150:
	.string	"gicr_base"
.LASF125:
	.string	"comm_page"
.LASF20:
	.string	"DCACHE_CLEAN_AND_INVALIDATE"
.LASF91:
	.string	"mmio_region_location"
.LASF83:
	.string	"mmio_result"
.LASF189:
	.string	"phys_addr"
.LASF78:
	.string	"paging_structures"
.LASF90:
	.string	"mmio_handler"
.LASF118:
	.string	"cell"
.LASF104:
	.string	"ignore2"
.LASF46:
	.string	"cpu_reset_address"
.LASF17:
	.string	"__u64"
.LASF183:
	.string	"budget_time"
.LASF132:
	.string	"pci_devices"
.LASF23:
	.string	"char"
.LASF69:
	.string	"get_entry"
.LASF142:
	.string	"jailhouse_comm_region"
.LASF128:
	.string	"config"
.LASF127:
	.string	"data_pages"
.LASF151:
	.string	"comm_region"
.LASF49:
	.string	"console"
.LASF148:
	.string	"gicd_base"
.LASF41:
	.string	"num_pio_regions"
.LASF177:
	.string	"sender"
.LASF61:
	.string	"msix_address"
.LASF162:
	.string	"shutdown_state"
.LASF165:
	.string	"cpu_suspended"
.LASF173:
	.string	"cpu_on_entry"
.LASF50:
	.string	"jailhouse_pci_device"
.LASF147:
	.string	"gic_version"
.LASF180:
	.string	"start_time"
.LASF64:
	.string	"shmem_peers"
.LASF152:
	.string	"per_cpu"
.LASF56:
	.string	"num_msi_vectors"
.LASF76:
	.string	"clear_entry"
.LASF116:
	.string	"pci_device"
.LASF145:
	.string	"reply_from_cell"
.LASF55:
	.string	"num_caps"
.LASF158:
	.string	"public_per_cpu"
.LASF159:
	.string	"root_table_page"
.LASF137:
	.string	"num_mmio_regions"
.LASF109:
	.string	"msg64"
.LASF156:
	.string	"id_aa64mmfr0"
.LASF160:
	.string	"cpu_id"
.LASF103:
	.string	"ignore1"
.LASF77:
	.string	"page_table_empty"
.LASF155:
	.string	"memguard"
.LASF29:
	.string	"flags"
.LASF3:
	.string	"bitmap"
.LASF30:
	.string	"divider"
.LASF139:
	.string	"pvu_tlb_entry"
.LASF168:
	.string	"pending_irqs"
.LASF75:
	.string	"get_next_pt"
.LASF172:
	.string	"park"
.LASF133:
	.string	"mmio_region_lock"
.LASF92:
	.string	"start"
.LASF95:
	.string	"ent_count"
.LASF194:
	.string	"stack"
.LASF175:
	.string	"lock"
.LASF144:
	.string	"msg_to_cell"
.LASF122:
	.string	"msix_table"
.LASF185:
	.string	"memory_overrun"
.LASF0:
	.string	"true"
.LASF71:
	.string	"set_terminal"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
