COMPILER_ARM = aarch64-linux-gnu-gcc
FLAGS = -lpthread -lrt

all: init threshold_bw blast_fake_colored spam_fake_colored fp_read fp_write config_schim_tdma tdma_read tdma_write poke populate ts_read ts_write config_schim_fp config_schim_ts poke_brainfreeze brainfreeze

config_schim_fp: src/config_schim_fp.c objects/tool.o
	$(COMPILER_ARM) src/config_schim_fp.c -o exec/config_schim_fp.out $(FLAGS) objects/tool.o

config_schim_tdma: src/config_schim_tdma.c objects/tool.o
	$(COMPILER_ARM) src/config_schim_tdma.c -o exec/config_schim_tdma.out $(FLAGS) objects/tool.o

config_schim_ts: src/config_schim_ts.c objects/tool.o
	$(COMPILER_ARM) src/config_schim_ts.c -o exec/config_schim_ts.out $(FLAGS) objects/tool.o

tdma_read: src/tdma_read.c objects/tool.o
	$(COMPILER_ARM) src/tdma_read.c -o exec/tdma_read.out $(FLAGS) objects/tool.o

tdma_write: src/tdma_write.c objects/tool.o
	$(COMPILER_ARM) src/tdma_write.c -o exec/tdma_write.out $(FLAGS) objects/tool.o

fp_read: src/fp_read.c objects/tool.o
	$(COMPILER_ARM) src/fp_read.c -o exec/fp_read.out $(FLAGS) objects/tool.o

fp_write: src/fp_write.c objects/tool.o
	$(COMPILER_ARM) src/fp_write.c -o exec/fp_write.out $(FLAGS) objects/tool.o

ts_read: src/ts_read.c objects/tool.o
	$(COMPILER_ARM) src/ts_read.c -o exec/ts_read.out $(FLAGS) objects/tool.o

ts_write: src/ts_write.c objects/tool.o
	$(COMPILER_ARM) src/ts_write.c -o exec/ts_write.out $(FLAGS) objects/tool.o

poke: src/poke.c objects/tool.o
	$(COMPILER_ARM) src/poke.c -o exec/poke.out $(FLAGS) objects/tool.o

populate: src/populate.c objects/tool.o
	$(COMPILER_ARM) src/populate.c -o exec/populate.out $(FLAGS) objects/tool.o

brainfreeze: src/brainfreeze.c objects/tool.o
	$(COMPILER_ARM) src/brainfreeze.c -o exec/brainfreeze.out $(FLAGS) objects/tool.o

poke_brainfreeze: src/poke_brainfreeze.c objects/tool.o
	$(COMPILER_ARM) src/poke_brainfreeze.c -o exec/poke_brainfreeze.out $(FLAGS) objects/tool.o

spam_fake_colored: src/spam_fake_colored.c objects/tool.o
	$(COMPILER_ARM) src/spam_fake_colored.c -o exec/spam_fake_colored.out $(FLAGS) objects/tool.o

blast_fake_colored: src/blast_fake_colored.c objects/tool.o
	$(COMPILER_ARM) src/blast_fake_colored.c -o exec/blast_fake_colored.out $(FLAGS) objects/tool.o

threshold_bw: src/threshold_bw.c objects/tool.o
	$(COMPILER_ARM) src/threshold_bw.c -o exec/threshold_bw.out $(FLAGS) objects/tool.o

objects/tool.o: include/tool.h src/tool.c
	$(COMPILER_ARM) -c src/tool.c -o objects/tool.o $(FLAGS)

init:
	mkdir -p exec
	mkdir -p objects

clean:
	rm -f exec/*.out
	rm -f objects/*.o
