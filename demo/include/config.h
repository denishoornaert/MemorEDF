#ifndef CONFIG_H
#define CONFIG_H

#define KB 1024
#define MB KB*KB

#define LPD0_ADDR  0x0080000000
#define LPD0_SIZE  64

#define HPM0_ADDR  0x00A0000000
#define HPM0_SIZE  128*KB

#define HPM1_ADDR  0x00B0000000
#define HPM1_SIZE  128*KB

#define OCM_ADDR   0x00FFFC0000
#define OCM_SIZE   1024

#define u128 __uint128_t

#endif /* CONFIG_H */
