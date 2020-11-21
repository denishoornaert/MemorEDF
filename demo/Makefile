COMPILER_ARM = aarch64-linux-gnu-gcc
FLAGS = -lpthread -lrt

all: init fp_read fp_write fp_write_once spam config_schim_tdma tdma_read tdma_write poke populate contention mg_read mg_write getid getid+1 getid32 getid32+1 colouring_test periodic_freeze brainfreeze config_schim_fp

periodic_freeze: src/periodic_freeze.c objects/tool.o
	$(COMPILER_ARM) src/periodic_freeze.c -o exec/periodic_freeze.out $(FLAGS) objects/tool.o

colouring_test: src/colouring_test.c objects/tool.o
	$(COMPILER_ARM) src/colouring_test.c -o exec/colouring_test.out $(FLAGS) objects/tool.o

getid+1: src/getid+1.c objects/tool.o
	$(COMPILER_ARM) src/getid+1.c -o exec/getid+1.out $(FLAGS) objects/tool.o

getid32: src/getid32.c objects/tool.o
	$(COMPILER_ARM) src/getid32.c -o exec/getid32.out $(FLAGS) objects/tool.o

getid32+1: src/getid32+1.c objects/tool.o
	$(COMPILER_ARM) src/getid32+1.c -o exec/getid32+1.out $(FLAGS) objects/tool.o

getid: src/getid.c objects/tool.o
	$(COMPILER_ARM) src/getid.c -o exec/getid.out $(FLAGS) objects/tool.o

config_schim_fp: src/config_schim_fp.c objects/tool.o
	$(COMPILER_ARM) src/config_schim_fp.c -o exec/config_schim_fp.out $(FLAGS) objects/tool.o

config_schim_tdma: src/config_schim_tdma.c objects/tool.o
	$(COMPILER_ARM) src/config_schim_tdma.c -o exec/config_schim_tdma.out $(FLAGS) objects/tool.o

tdma_read: src/tdma_read.c objects/tool.o
	$(COMPILER_ARM) src/tdma_read.c -o exec/tdma_read.out $(FLAGS) objects/tool.o

tdma_write: src/tdma_write.c objects/tool.o
	$(COMPILER_ARM) src/tdma_write.c -o exec/tdma_write.out $(FLAGS) objects/tool.o

fp_read: src/fp_read.c objects/tool.o
	$(COMPILER_ARM) src/fp_read.c -o exec/fp_read.out $(FLAGS) objects/tool.o

fp_write: src/fp_write.c objects/tool.o
	$(COMPILER_ARM) src/fp_write.c -o exec/fp_write.out $(FLAGS) objects/tool.o

fp_write_once: src/fp_write_once.c objects/tool.o
	$(COMPILER_ARM) src/fp_write_once.c -o exec/fp_write_once.out $(FLAGS) objects/tool.o

mg_read: src/mg_read.c objects/tool.o
	$(COMPILER_ARM) src/mg_read.c -o exec/mg_read.out $(FLAGS) objects/tool.o

mg_write: src/mg_write.c objects/tool.o
	$(COMPILER_ARM) src/mg_write.c -o exec/mg_write.out $(FLAGS) objects/tool.o

poke: src/poke.c objects/tool.o
	$(COMPILER_ARM) src/poke.c -o exec/poke.out $(FLAGS) objects/tool.o

populate: src/populate.c objects/tool.o
	$(COMPILER_ARM) src/populate.c -o exec/populate.out $(FLAGS) objects/tool.o

contention: src/contention.c objects/tool.o
	$(COMPILER_ARM) src/contention.c -o exec/contention.out $(FLAGS) objects/tool.o

brainfreeze: src/brainfreeze.c objects/tool.o
	$(COMPILER_ARM) src/brainfreeze.c -o exec/brainfreeze.out $(FLAGS) objects/tool.o

spam: src/brainfreeze.c objects/tool.o
	$(COMPILER_ARM) src/spam.c -o exec/spam.out $(FLAGS) objects/tool.o

objects/tool.o: include/tool.h src/tool.c
	$(COMPILER_ARM) -c src/tool.c -o objects/tool.o $(FLAGS)

init:
	mkdir -p exec
	mkdir -p objects

clean:
	rm -f exec/*.out
	rm -f objects/*.o
