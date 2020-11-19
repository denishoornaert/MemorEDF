# Demos

## Organisation
The present folder's organisation is as follows:
 - ```data/``` contains the measurements issued from the benchmarks
 - ```exec/``` contains the executables
 - ```include/``` contains all the ```c``` header files
 - ```objects/``` contains all the temporary objects required for compilation
 - ```src/``` contains all the source files
 - ```Makefile``` used to generate the executables

## Schedulers banchmarks
### Time Division Memory Access (TDMA)
Usage
```bash
exec/tdma.out <extra-cores-having-active-slot> <extra-active-cores> <core-under-analysis-slot-size> <extra-cores-slot-size>
```
For instance
```bash
exec/tdma.out 2 1 4096 3125000
```

### Fixed Priority (FP)
Usage
```bash
exec/fp.out <nb-competing-cores> <prio-core-3-hex,prio-core-2-hex,prio-core-1-hex,prio-core-0-hex> <nb-samples>
```
For instance
```bash
exec/fp.out 2 0f0e0d0c 20
```

## Utils
### Poke
Usage for reading
```bash
exec/poke.out r <core-id> <dest-address-32bit-hex>
```
or for writing
```bash
exec/poke.out w <core-id> <dest-address-32bit-hex> <data-32bit>
```
For instance
```bash
exec/poke.out w 1 a0000000 cafebeef
exec/poke.out r 1 a0000000
```

### Populate
Usage
```bash
exec/populate.out <address-32bit-hex> <size-in-bytes>
```
For instance
```bash
exec/populate.out a0000000 2048
```

### Contention
**Warning:** not meant for the SchIM rout unless the configuration registers are set properly beforehand.
```bash
exec/contention.out <nb-competing-cores> <nb-samples>
```
For instance
```bash
exec/contention.out 2 20
```
