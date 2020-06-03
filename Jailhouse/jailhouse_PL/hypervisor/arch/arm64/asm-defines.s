	.arch armv8-a
	.file	"asm-defines.c"
// GNU C11 (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) version 5.4.0 20160609 (aarch64-linux-gnu)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/include
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/include/generated
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/../include/arch/arm64
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/../include
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm-common/include
// -I /home/zcu1023/Cache_Bleaching/lnx_jh/build/tmp/work-shared/plnx_aarch64/kernel-source//home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor
// -I /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor
// -imultiarch aarch64-linux-gnu -D __KERNEL__ -D __LINUX_COMPILER_TYPES_H
// -D KBUILD_BASENAME="asm_defines" -D KBUILD_MODNAME="asm_defines"
// -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/5/include
// -include /home/zcu1023/Cache_Bleaching/jailhouse_PL/include/jailhouse/config.h
// -MD /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/.asm-defines.s.d
// /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c
// -mlittle-endian -mabi=lp64
// -auxbase-strip /home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.s
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
.LFB43:
	.file 1 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c"
	.loc 1 22 0
	.cfi_startproc
	.loc 1 23 0
#APP
// 23 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_MAX_CPUS 48 __builtin_offsetof(struct jailhouse_header, max_cpus)	//
// 0 "" 2
	.loc 1 24 0
// 24 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_CORE_SIZE 8 __builtin_offsetof(struct jailhouse_header, core_size)	//
// 0 "" 2
	.loc 1 25 0
// 25 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_DEBUG_CONSOLE_VIRT 56 __builtin_offsetof(struct jailhouse_header, debug_console_base)	//
// 0 "" 2
	.loc 1 26 0
// 26 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>HEADER_HYP_STUB_VERSION 72 __builtin_offsetof(struct jailhouse_header, arm_linux_hyp_abi)	//
// 0 "" 2
	.loc 1 27 0
// 27 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>SYSCONFIG_DEBUG_CONSOLE_PHYS 52 __builtin_offsetof(struct jailhouse_system, debug_console.address)	//
// 0 "" 2
	.loc 1 29 0
// 29 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>SYSCONFIG_HYPERVISOR_PHYS 12 __builtin_offsetof(struct jailhouse_system, hypervisor_memory.phys_start)	//
// 0 "" 2
	.loc 1 31 0
// 31 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>PERCPU_ID_AA64MMFR0 4144 __builtin_offsetof(struct per_cpu, id_aa64mmfr0)	//
// 0 "" 2
	.loc 1 32 0
// 32 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>
// 0 "" 2
	.loc 1 34 0
// 34 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>PERCPU_STACK_END 4096 __builtin_offsetof(struct per_cpu, stack) + FIELD_SIZEOF(struct per_cpu, stack)	//
// 0 "" 2
	.loc 1 37 0
// 37 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>PERCPU_SIZE_ASM 16384 sizeof(struct per_cpu)	//
// 0 "" 2
	.loc 1 38 0
// 38 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>CPU_STAT_VMEXITS_TOTAL 280375465160720 LOCAL_CPU_BASE + __builtin_offsetof(struct per_cpu, public.stats[JAILHOUSE_CPU_STAT_VMEXITS_TOTAL])	//
// 0 "" 2
	.loc 1 41 0
// 41 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>CPU_STAT_VMEXITS_SMCCC 280375465160752 LOCAL_CPU_BASE + __builtin_offsetof(struct per_cpu, public.stats[JAILHOUSE_CPU_STAT_VMEXITS_SMCCC])	//
// 0 "" 2
	.loc 1 44 0
// 44 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>
// 0 "" 2
	.loc 1 46 0
// 46 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>DCACHE_CLEAN_ASM 0 DCACHE_CLEAN	//
// 0 "" 2
	.loc 1 47 0
// 47 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>DCACHE_INVALIDATE_ASM 1 DCACHE_INVALIDATE	//
// 0 "" 2
	.loc 1 48 0
// 48 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c" 1
	
=>DCACHE_CLEAN_AND_INVALIDATE_ASM 2 DCACHE_CLEAN_AND_INVALIDATE	//
// 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE43:
	.size	common, .-common
.Letext0:
	.file 2 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include/jailhouse/types.h"
	.file 3 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/include/asm/processor.h"
	.file 4 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/include/asm/paging.h"
	.file 5 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/../include/jailhouse/console.h"
	.file 6 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/../include/jailhouse/cell-config.h"
	.file 7 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include/jailhouse/paging.h"
	.file 8 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm-common/include/asm/dcaches.h"
	.file 9 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include/jailhouse/mmio.h"
	.file 10 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm-common/include/asm/cell.h"
	.file 11 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include/jailhouse/pci.h"
	.file 12 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include/jailhouse/cell.h"
	.file 13 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/include/asm/spinlock.h"
	.file 14 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/../include/arch/arm64/asm/jailhouse_hypercall.h"
	.file 15 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/include/jailhouse/percpu.h"
	.file 16 "/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm-common/include/asm/irqchip.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd47
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xc
	.4byte	.LASF183
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
	.byte	0x18
	.4byte	0x164
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x1e
	.4byte	0x79
	.byte	0
	.uleb128 0xe
	.string	"usr"
	.byte	0x3
	.byte	0x1f
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
	.4byte	.LASF101
	.2byte	0x100
	.byte	0x3
	.byte	0x17
	.4byte	0x187
	.uleb128 0x10
	.4byte	0x142
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.byte	0xb5
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
	.byte	0x54
	.4byte	0x202
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x55
	.4byte	0x114
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0x56
	.4byte	0x109
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x57
	.4byte	0xfe
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x58
	.4byte	0xfe
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0x59
	.4byte	0x109
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x5a
	.4byte	0x109
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.byte	0x5b
	.4byte	0x114
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x84
	.byte	0x6
	.byte	0x50
	.4byte	0x2da
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x6
	.byte	0x51
	.4byte	0x2da
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x6
	.byte	0x52
	.4byte	0xfe
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x54
	.4byte	0x2ea
	.byte	0x8
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.byte	0x55
	.4byte	0x109
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x6
	.byte	0x56
	.4byte	0x109
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x58
	.4byte	0x109
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x59
	.4byte	0x109
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x5a
	.4byte	0x109
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5b
	.4byte	0x109
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x5c
	.4byte	0x109
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x6
	.byte	0x5d
	.4byte	0x109
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x6
	.byte	0x5e
	.4byte	0x109
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x6
	.byte	0x60
	.4byte	0x109
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x6
	.byte	0x62
	.4byte	0x109
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x6
	.byte	0x64
	.4byte	0x114
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x6
	.byte	0x65
	.4byte	0x114
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x6
	.byte	0x67
	.4byte	0x1a1
	.byte	0x64
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x2ea
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x198
	.4byte	0x2fa
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x38
	.byte	0x6
	.byte	0xaa
	.4byte	0x3bb
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x6
	.byte	0xab
	.4byte	0xf3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x6
	.byte	0xac
	.4byte	0xf3
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x6
	.byte	0xad
	.4byte	0xfe
	.byte	0x2
	.uleb128 0xe
	.string	"bdf"
	.byte	0x6
	.byte	0xae
	.4byte	0xfe
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x6
	.byte	0xaf
	.4byte	0x3bb
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb0
	.4byte	0xfe
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x6
	.byte	0xb1
	.4byte	0xfe
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x6
	.byte	0xb2
	.4byte	0xf3
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x6
	.byte	0xb3
	.4byte	0xf3
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x6
	.byte	0xb4
	.4byte	0xfe
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x6
	.byte	0xb5
	.4byte	0xfe
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x6
	.byte	0xb6
	.4byte	0x114
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x6
	.byte	0xb8
	.4byte	0x109
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x6
	.byte	0xba
	.4byte	0xfe
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x6
	.byte	0xbb
	.4byte	0x3cb
	.byte	0x36
	.byte	0
	.uleb128 0x8
	.4byte	0x109
	.4byte	0x3cb
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0xf3
	.4byte	0x3db
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x7
	.byte	0x43
	.4byte	0x187
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x50
	.byte	0x7
	.byte	0x49
	.4byte	0x46b
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x7
	.byte	0x4c
	.4byte	0x42
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x7
	.byte	0x55
	.4byte	0x47f
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x7
	.byte	0x5f
	.4byte	0x499
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x7
	.byte	0x67
	.4byte	0x4b4
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x7
	.byte	0x71
	.4byte	0x4ce
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x7
	.byte	0x7a
	.4byte	0x4e3
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0x81
	.4byte	0x4f9
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x7
	.byte	0x8a
	.4byte	0x4e3
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x7
	.byte	0x90
	.4byte	0x50a
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x7
	.byte	0x98
	.4byte	0x51f
	.byte	0x48
	.byte	0
	.uleb128 0x13
	.4byte	0x187
	.4byte	0x47f
	.uleb128 0x14
	.4byte	0x3db
	.uleb128 0x14
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x46b
	.uleb128 0x13
	.4byte	0x49
	.4byte	0x499
	.uleb128 0x14
	.4byte	0x187
	.uleb128 0x14
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x485
	.uleb128 0x15
	.4byte	0x4b4
	.uleb128 0x14
	.4byte	0x187
	.uleb128 0x14
	.4byte	0x79
	.uleb128 0x14
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x49f
	.uleb128 0x13
	.4byte	0x79
	.4byte	0x4ce
	.uleb128 0x14
	.4byte	0x187
	.uleb128 0x14
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4ba
	.uleb128 0x13
	.4byte	0x79
	.4byte	0x4e3
	.uleb128 0x14
	.4byte	0x187
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4d4
	.uleb128 0x15
	.4byte	0x4f9
	.uleb128 0x14
	.4byte	0x187
	.uleb128 0x14
	.4byte	0x79
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4e9
	.uleb128 0x15
	.4byte	0x50a
	.uleb128 0x14
	.4byte	0x187
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x4ff
	.uleb128 0x13
	.4byte	0x49
	.4byte	0x51f
	.uleb128 0x14
	.4byte	0x3db
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x510
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x28
	.byte	0x7
	.byte	0x9c
	.4byte	0x57a
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x7
	.byte	0x9e
	.4byte	0x49
	.byte	0
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x7
	.byte	0xa1
	.4byte	0x57a
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x7
	.byte	0xa4
	.4byte	0x3db
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x7
	.byte	0xa6
	.4byte	0x585
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x7
	.byte	0xa8
	.4byte	0x109
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x7
	.byte	0xaa
	.4byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x580
	.uleb128 0x16
	.4byte	0x3e6
	.uleb128 0x11
	.byte	0x8
	.4byte	0x3db
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x4
	.4byte	0xc8
	.byte	0x9
	.byte	0x7a
	.4byte	0x5ae
	.uleb128 0x17
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
	.byte	0x7d
	.4byte	0x5eb
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x9
	.byte	0x80
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.byte	0x82
	.4byte	0x42
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0x9
	.byte	0x84
	.4byte	0x49
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x9
	.byte	0x86
	.4byte	0x79
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x9
	.byte	0x90
	.4byte	0x5f6
	.uleb128 0x11
	.byte	0x8
	.4byte	0x5fc
	.uleb128 0x13
	.4byte	0x58b
	.4byte	0x610
	.uleb128 0x14
	.4byte	0x19f
	.uleb128 0x14
	.4byte	0x610
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x5ae
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x10
	.byte	0x9
	.byte	0x93
	.4byte	0x63b
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x9
	.byte	0x95
	.4byte	0x79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x9
	.byte	0x97
	.4byte	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x10
	.byte	0x9
	.byte	0x9b
	.4byte	0x660
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x9
	.byte	0x9d
	.4byte	0x5eb
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x9
	.byte	0x9f
	.4byte	0x19f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0xa8
	.byte	0xa
	.byte	0x12
	.4byte	0x684
	.uleb128 0xe
	.string	"mm"
	.byte	0xa
	.byte	0x13
	.4byte	0x525
	.byte	0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0xa
	.byte	0x15
	.4byte	0x684
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0x694
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.byte	0xa
	.byte	0xb
	.byte	0x4c
	.4byte	0x6fd
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0xb
	.byte	0x4d
	.4byte	0xb6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xb
	.byte	0x4e
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xb
	.byte	0x4f
	.4byte	0xb6
	.byte	0x2
	.byte	0x3
	.byte	0xc
	.byte	0x2
	.uleb128 0x1a
	.string	"mme"
	.byte	0xb
	.byte	0x50
	.4byte	0xb6
	.byte	0x2
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xb
	.byte	0x51
	.4byte	0xb6
	.byte	0x2
	.byte	0x9
	.byte	0
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xb
	.byte	0x52
	.4byte	0xcf
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xb
	.byte	0x53
	.4byte	0xb6
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0xe
	.byte	0xb
	.byte	0x55
	.4byte	0x72a
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0xb
	.byte	0x56
	.4byte	0xcf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xb
	.byte	0x57
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xb
	.byte	0x58
	.4byte	0xb6
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x10
	.byte	0xb
	.byte	0x4a
	.4byte	0x758
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0xb
	.byte	0x54
	.4byte	0x694
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0xb
	.byte	0x59
	.4byte	0x6fd
	.uleb128 0x1d
	.string	"raw"
	.byte	0xb
	.byte	0x5a
	.4byte	0x758
	.byte	0
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0x768
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0xb
	.byte	0x61
	.4byte	0x7aa
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0xb
	.byte	0x62
	.4byte	0xb6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xb
	.byte	0x63
	.4byte	0xb6
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xb
	.byte	0x64
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xb
	.byte	0x65
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x4
	.byte	0xb
	.byte	0x5f
	.4byte	0x7c7
	.uleb128 0x10
	.4byte	0x768
	.uleb128 0x1d
	.string	"raw"
	.byte	0xb
	.byte	0x67
	.4byte	0xcf
	.byte	0
	.uleb128 0x18
	.byte	0x10
	.byte	0xb
	.byte	0x6e
	.4byte	0x806
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xb
	.byte	0x6f
	.4byte	0xe1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xb
	.byte	0x70
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0xb
	.byte	0x71
	.4byte	0xcf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0xb
	.byte	0x72
	.4byte	0xcf
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x10
	.byte	0xb
	.byte	0x6c
	.4byte	0x823
	.uleb128 0x10
	.4byte	0x7c7
	.uleb128 0x1d
	.string	"raw"
	.byte	0xb
	.byte	0x74
	.4byte	0x758
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF111
	.2byte	0x158
	.byte	0xb
	.byte	0x7d
	.4byte	0x89d
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0xb
	.byte	0x7f
	.4byte	0x89d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0xb
	.byte	0x81
	.4byte	0x978
	.byte	0x8
	.uleb128 0xe
	.string	"bar"
	.byte	0xb
	.byte	0x83
	.4byte	0x97e
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0xb
	.byte	0x86
	.4byte	0x72a
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0xb
	.byte	0x89
	.4byte	0x7aa
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0xb
	.byte	0x8b
	.4byte	0x993
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0xb
	.byte	0x8d
	.4byte	0x999
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0xb
	.byte	0x8f
	.4byte	0x999
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0xb
	.byte	0x91
	.4byte	0x99f
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x8a3
	.uleb128 0x16
	.4byte	0x2fa
	.uleb128 0x1e
	.4byte	.LASF113
	.2byte	0x2000
	.byte	0xc
	.byte	0x1a
	.4byte	0x978
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0xc
	.byte	0x20
	.4byte	0xa71
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0xc
	.byte	0x24
	.4byte	0x660
	.2byte	0x1000
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0xc
	.byte	0x28
	.4byte	0x42
	.2byte	0x10a8
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0xc
	.byte	0x2a
	.4byte	0xaa2
	.2byte	0x10b0
	.uleb128 0x1f
	.4byte	.LASF24
	.byte	0xc
	.byte	0x2d
	.4byte	0xaa8
	.2byte	0x10b8
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0xc
	.byte	0x2f
	.4byte	0x54
	.2byte	0x10c0
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0xc
	.byte	0x32
	.4byte	0x49
	.2byte	0x10d0
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0xc
	.byte	0x35
	.4byte	0x978
	.2byte	0x10d8
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0xc
	.byte	0x38
	.4byte	0xaae
	.2byte	0x10e0
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0xc
	.byte	0x3c
	.4byte	0x9d0
	.2byte	0x10e8
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0xc
	.byte	0x3f
	.4byte	0xab4
	.2byte	0x10f0
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0xc
	.byte	0x41
	.4byte	0xab9
	.2byte	0x10f8
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0xc
	.byte	0x43
	.4byte	0xabf
	.2byte	0x1100
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0xc
	.byte	0x45
	.4byte	0x42
	.2byte	0x1108
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0xc
	.byte	0x47
	.4byte	0x42
	.2byte	0x110c
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.4byte	0x8a8
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0x98e
	.uleb128 0x9
	.4byte	0x90
	.byte	0x5
	.byte	0
	.uleb128 0x20
	.4byte	.LASF116
	.uleb128 0x11
	.byte	0x8
	.4byte	0x98e
	.uleb128 0x11
	.byte	0x8
	.4byte	0x806
	.uleb128 0x8
	.4byte	0x806
	.4byte	0x9af
	.uleb128 0x9
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0xd
	.byte	0x1c
	.4byte	0x9d0
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0xd
	.byte	0x1d
	.4byte	0xb6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0xd
	.byte	0x1e
	.4byte	0xb6
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0xd
	.byte	0x1f
	.4byte	0x9af
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x58
	.byte	0xe
	.byte	0x3a
	.4byte	0xa6c
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0xe
	.byte	0x3b
	.4byte	0x2da
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0xe
	.byte	0x3b
	.4byte	0xfe
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0xe
	.byte	0x3b
	.4byte	0xa6c
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0xe
	.byte	0x3b
	.4byte	0xa6c
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0xe
	.byte	0x3b
	.4byte	0xa6c
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0xe
	.byte	0x3b
	.4byte	0xa6c
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0xe
	.byte	0x3b
	.4byte	0x1a1
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0xe
	.byte	0x3c
	.4byte	0xf3
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0xe
	.byte	0x3c
	.4byte	0x114
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0xe
	.byte	0x3c
	.4byte	0x114
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0xe
	.byte	0x3c
	.4byte	0x114
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.4byte	0x109
	.uleb128 0x22
	.2byte	0x1000
	.byte	0xc
	.byte	0x1b
	.4byte	0xa91
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0xc
	.byte	0x1d
	.4byte	0x9db
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0xc
	.byte	0x1f
	.4byte	0xa91
	.byte	0
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xaa2
	.uleb128 0x23
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
	.4byte	0x823
	.uleb128 0x21
	.4byte	0x79
	.uleb128 0x11
	.byte	0x8
	.4byte	0x616
	.uleb128 0x11
	.byte	0x8
	.4byte	0x63b
	.uleb128 0x1e
	.4byte	.LASF145
	.2byte	0x4000
	.byte	0xf
	.byte	0x45
	.4byte	0xb0d
	.uleb128 0x24
	.4byte	0xcf6
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0xf
	.byte	0x52
	.4byte	0x525
	.2byte	0x1000
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0xf
	.byte	0x54
	.4byte	0x49
	.2byte	0x1028
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0xf
	.byte	0x54
	.4byte	0x79
	.2byte	0x1030
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0xf
	.byte	0x57
	.4byte	0xb0d
	.2byte	0x2000
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF150
	.2byte	0x2000
	.byte	0xf
	.byte	0x1f
	.4byte	0xc0b
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0xf
	.byte	0x22
	.4byte	0xa91
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0xf
	.byte	0x25
	.4byte	0x42
	.2byte	0x1000
	.uleb128 0x1f
	.4byte	.LASF113
	.byte	0xf
	.byte	0x27
	.4byte	0x978
	.2byte	0x1008
	.uleb128 0x1f
	.4byte	.LASF153
	.byte	0xf
	.byte	0x2a
	.4byte	0xcad
	.2byte	0x1010
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0xf
	.byte	0x31
	.4byte	0xc8
	.2byte	0x1034
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0xf
	.byte	0x34
	.4byte	0x49
	.2byte	0x1038
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0xf
	.byte	0x37
	.4byte	0xcbd
	.2byte	0x103c
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0xf
	.byte	0x39
	.4byte	0xcbd
	.2byte	0x1040
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0xf
	.byte	0x3c
	.4byte	0x49
	.2byte	0x1044
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0xf
	.byte	0x3f
	.4byte	0x49
	.2byte	0x1048
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0xf
	.byte	0x41
	.4byte	0x79
	.2byte	0x1050
	.uleb128 0x25
	.4byte	0xc8e
	.2byte	0x1058
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0xf
	.byte	0x41
	.4byte	0xc0b
	.2byte	0x1068
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0xf
	.byte	0x41
	.4byte	0x9d0
	.2byte	0x1474
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0xf
	.byte	0x41
	.4byte	0xcbd
	.2byte	0x1478
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0xf
	.byte	0x41
	.4byte	0x49
	.2byte	0x147c
	.uleb128 0x1f
	.4byte	.LASF165
	.byte	0xf
	.byte	0x41
	.4byte	0x49
	.2byte	0x1480
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0xf
	.byte	0x41
	.4byte	0x79
	.2byte	0x1488
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0xf
	.byte	0x41
	.4byte	0x79
	.2byte	0x1490
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF161
	.2byte	0x40c
	.byte	0x10
	.byte	0x46
	.4byte	0xc58
	.uleb128 0x7
	.4byte	.LASF168
	.byte	0x10
	.byte	0x48
	.4byte	0x9d0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0x10
	.byte	0x49
	.4byte	0xc58
	.byte	0x4
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x10
	.byte	0x4b
	.4byte	0xc58
	.2byte	0x204
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0x10
	.byte	0x4c
	.4byte	0x42
	.2byte	0x404
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x10
	.byte	0x4e
	.4byte	0xc68
	.2byte	0x408
	.byte	0
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0xc68
	.uleb128 0x9
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.4byte	0x42
	.uleb128 0x18
	.byte	0x10
	.byte	0xf
	.byte	0x41
	.4byte	0xc8e
	.uleb128 0x7
	.4byte	.LASF173
	.byte	0xf
	.byte	0x41
	.4byte	0x19f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF174
	.byte	0xf
	.byte	0x41
	.4byte	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x26
	.byte	0x10
	.byte	0xf
	.byte	0x41
	.4byte	0xcad
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0xf
	.byte	0x41
	.4byte	0x49
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0xf
	.byte	0x41
	.4byte	0xc6d
	.byte	0
	.uleb128 0x8
	.4byte	0xcf
	.4byte	0xcbd
	.uleb128 0x9
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.4byte	0x49
	.uleb128 0xd
	.2byte	0x1000
	.byte	0xf
	.byte	0x4a
	.4byte	0xce5
	.uleb128 0x7
	.4byte	.LASF177
	.byte	0xf
	.byte	0x4b
	.4byte	0xce5
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF178
	.byte	0xf
	.byte	0x4d
	.4byte	0x174
	.2byte	0xf00
	.byte	0
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xcf6
	.uleb128 0x23
	.4byte	0x90
	.2byte	0xeff
	.byte	0
	.uleb128 0x22
	.2byte	0x1000
	.byte	0xf
	.byte	0x47
	.4byte	0xd10
	.uleb128 0x1c
	.4byte	.LASF179
	.byte	0xf
	.byte	0x49
	.4byte	0xa91
	.uleb128 0x10
	.4byte	0xcc2
	.byte	0
	.uleb128 0x27
	.4byte	.LASF184
	.byte	0x1
	.byte	0x15
	.8byte	.LFB43
	.8byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x7
	.byte	0xbb
	.4byte	0x79
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0xd3f
	.uleb128 0x29
	.byte	0
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0xf
	.byte	0x8a
	.4byte	0xd34
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
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
.LASF61:
	.string	"shmem_protocol"
.LASF62:
	.string	"padding"
.LASF164:
	.string	"reset"
.LASF33:
	.string	"jailhouse_cell_desc"
.LASF37:
	.string	"cpu_set_size"
.LASF160:
	.string	"mpidr"
.LASF65:
	.string	"page_size"
.LASF119:
	.string	"msix_vector_array"
.LASF56:
	.string	"msi_64bits"
.LASF35:
	.string	"revision"
.LASF28:
	.string	"type"
.LASF147:
	.string	"smccc_has_workaround_1"
.LASF42:
	.string	"num_pci_devices"
.LASF182:
	.string	"GNU C11 5.4.0 20160609 -mlittle-endian -mabi=lp64 -g -Os -fno-strict-aliasing -fno-pic -fno-common -fno-stack-protector -fno-builtin-ffsl"
.LASF13:
	.string	"long long unsigned int"
.LASF15:
	.string	"__u16"
.LASF2:
	.string	"max_cpu_id"
.LASF22:
	.string	"pt_entry_t"
.LASF108:
	.string	"masked"
.LASF126:
	.string	"next"
.LASF85:
	.string	"MMIO_UNHANDLED"
.LASF25:
	.string	"jailhouse_console"
.LASF53:
	.string	"caps_start"
.LASF12:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF178:
	.string	"guest_regs"
.LASF47:
	.string	"msg_reply_timeout"
.LASF31:
	.string	"gate_nr"
.LASF94:
	.string	"function"
.LASF118:
	.string	"msix_vectors"
.LASF21:
	.string	"__padding"
.LASF179:
	.string	"stack"
.LASF60:
	.string	"shmem_region"
.LASF129:
	.string	"mmio_generation"
.LASF50:
	.string	"iommu"
.LASF134:
	.string	"owner"
.LASF82:
	.string	"dcache_flush"
.LASF87:
	.string	"mmio_access"
.LASF153:
	.string	"stats"
.LASF135:
	.string	"spinlock_t"
.LASF162:
	.string	"control_lock"
.LASF175:
	.string	"gicc_initialized"
.LASF97:
	.string	"enable"
.LASF171:
	.string	"head"
.LASF40:
	.string	"num_irqchips"
.LASF102:
	.string	"pci_msi_registers"
.LASF131:
	.string	"mmio_handlers"
.LASF63:
	.string	"page_table_t"
.LASF39:
	.string	"num_cache_regions"
.LASF34:
	.string	"signature"
.LASF167:
	.string	"cpu_on_context"
.LASF109:
	.string	"reserved"
.LASF32:
	.string	"clock_reg"
.LASF58:
	.string	"msix_region_size"
.LASF89:
	.string	"value"
.LASF137:
	.string	"cell_state"
.LASF81:
	.string	"addr_col_mask"
.LASF4:
	.string	"unsigned int"
.LASF125:
	.string	"loadable"
.LASF52:
	.string	"bar_mask"
.LASF14:
	.string	"__u8"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"__u32"
.LASF142:
	.string	"gicc_base"
.LASF106:
	.string	"fmask"
.LASF36:
	.string	"name"
.LASF45:
	.string	"vpci_irq_base"
.LASF101:
	.string	"registers"
.LASF57:
	.string	"num_msix_vectors"
.LASF86:
	.string	"MMIO_HANDLED"
.LASF100:
	.string	"data"
.LASF27:
	.string	"size"
.LASF11:
	.string	"short unsigned int"
.LASF169:
	.string	"irqs"
.LASF176:
	.string	"gicr"
.LASF51:
	.string	"domain"
.LASF121:
	.string	"arch"
.LASF184:
	.string	"common"
.LASF71:
	.string	"set_next_pt"
.LASF8:
	.string	"bool"
.LASF110:
	.string	"pci_msix_vector"
.LASF69:
	.string	"get_phys"
.LASF133:
	.string	"max_mmio_regions"
.LASF115:
	.string	"msix_registers"
.LASF38:
	.string	"num_memory_regions"
.LASF107:
	.string	"pci_msix_registers"
.LASF96:
	.string	"irq_bitmap"
.LASF88:
	.string	"is_write"
.LASF173:
	.string	"base"
.LASF155:
	.string	"failed"
.LASF103:
	.string	"msg32"
.LASF44:
	.string	"num_alt_mappings"
.LASF43:
	.string	"num_pci_caps"
.LASF172:
	.string	"tail"
.LASF6:
	.string	"sizetype"
.LASF130:
	.string	"mmio_locations"
.LASF26:
	.string	"address"
.LASF95:
	.string	"arch_cell"
.LASF78:
	.string	"root_table"
.LASF76:
	.string	"hv_paging"
.LASF158:
	.string	"flush_vcpu_caches"
.LASF116:
	.string	"ivshmem_endpoint"
.LASF114:
	.string	"msi_registers"
.LASF149:
	.string	"public"
.LASF93:
	.string	"mmio_region_handler"
.LASF156:
	.string	"suspend_cpu"
.LASF19:
	.string	"DCACHE_INVALIDATE"
.LASF70:
	.string	"get_flags"
.LASF163:
	.string	"wait_for_poweron"
.LASF146:
	.string	"pg_structs"
.LASF80:
	.string	"current_mapping"
.LASF181:
	.string	"__page_pool"
.LASF77:
	.string	"root_paging"
.LASF183:
	.string	"/home/zcu1023/Cache_Bleaching/jailhouse_PL/hypervisor/arch/arm64/asm-defines.c"
.LASF24:
	.string	"cpu_set"
.LASF105:
	.string	"ignore"
.LASF18:
	.string	"DCACHE_CLEAN"
.LASF159:
	.string	"refresh_root_page"
.LASF9:
	.string	"unsigned char"
.LASF64:
	.string	"paging"
.LASF124:
	.string	"small_cpu_set"
.LASF177:
	.string	"__fill"
.LASF10:
	.string	"short int"
.LASF112:
	.string	"info"
.LASF41:
	.string	"pio_bitmap_size"
.LASF84:
	.string	"MMIO_ERROR"
.LASF1:
	.string	"false"
.LASF180:
	.string	"page_offset"
.LASF67:
	.string	"entry_valid"
.LASF143:
	.string	"gicr_base"
.LASF120:
	.string	"comm_page"
.LASF20:
	.string	"DCACHE_CLEAN_AND_INVALIDATE"
.LASF91:
	.string	"mmio_region_location"
.LASF83:
	.string	"mmio_result"
.LASF174:
	.string	"phys_addr"
.LASF75:
	.string	"paging_structures"
.LASF90:
	.string	"mmio_handler"
.LASF113:
	.string	"cell"
.LASF99:
	.string	"ignore2"
.LASF46:
	.string	"cpu_reset_address"
.LASF17:
	.string	"__u64"
.LASF127:
	.string	"pci_devices"
.LASF23:
	.string	"char"
.LASF66:
	.string	"get_entry"
.LASF136:
	.string	"jailhouse_comm_region"
.LASF123:
	.string	"config"
.LASF122:
	.string	"data_pages"
.LASF144:
	.string	"comm_region"
.LASF48:
	.string	"console"
.LASF141:
	.string	"gicd_base"
.LASF170:
	.string	"sender"
.LASF59:
	.string	"msix_address"
.LASF154:
	.string	"shutdown_state"
.LASF157:
	.string	"cpu_suspended"
.LASF166:
	.string	"cpu_on_entry"
.LASF49:
	.string	"jailhouse_pci_device"
.LASF140:
	.string	"gic_version"
.LASF145:
	.string	"per_cpu"
.LASF55:
	.string	"num_msi_vectors"
.LASF73:
	.string	"clear_entry"
.LASF111:
	.string	"pci_device"
.LASF139:
	.string	"reply_from_cell"
.LASF54:
	.string	"num_caps"
.LASF150:
	.string	"public_per_cpu"
.LASF151:
	.string	"root_table_page"
.LASF132:
	.string	"num_mmio_regions"
.LASF104:
	.string	"msg64"
.LASF148:
	.string	"id_aa64mmfr0"
.LASF152:
	.string	"cpu_id"
.LASF98:
	.string	"ignore1"
.LASF74:
	.string	"page_table_empty"
.LASF29:
	.string	"flags"
.LASF3:
	.string	"bitmap"
.LASF30:
	.string	"divider"
.LASF161:
	.string	"pending_irqs"
.LASF72:
	.string	"get_next_pt"
.LASF165:
	.string	"park"
.LASF128:
	.string	"mmio_region_lock"
.LASF92:
	.string	"start"
.LASF79:
	.string	"alt_mapping_roots"
.LASF168:
	.string	"lock"
.LASF138:
	.string	"msg_to_cell"
.LASF117:
	.string	"msix_table"
.LASF0:
	.string	"true"
.LASF68:
	.string	"set_terminal"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
