COMPILER_ARM = aarch64-linux-gnu-gcc
FLAGS = -lpthread -lrt

all: tdma fixedpriority poke populate contention memguard

tdma: src/tdma.c objects/tool.o
	$(COMPILER_ARM) src/tdma.c -o exec/tdma.out $(FLAGS) objects/tool.o

fixedpriority: src/fp.c objects/tool.o
	$(COMPILER_ARM) src/fp.c -o exec/fp.out $(FLAGS) objects/tool.o

poke: src/poke.c objects/tool.o
	$(COMPILER_ARM) src/poke.c -o exec/poke.out $(FLAGS) objects/tool.o

populate: src/populate.c objects/tool.o
	$(COMPILER_ARM) src/populate.c -o exec/populate.out $(FLAGS) objects/tool.o

contention: src/contention.c objects/tool.o
	$(COMPILER_ARM) src/contention.c -o exec/contention.out $(FLAGS) objects/tool.o

memguard: src/mg.c objects/tool.o
	$(COMPILER_ARM) src/mg.c -o exec/mg.out $(FLAGS) objects/tool.o

objects/tool.o: include/tool.h src/tool.c
	$(COMPILER_ARM) -c src/tool.c -o objects/tool.o $(FLAGS)

clean:
	rm -f exec/*.out
	rm -f objects/*.o
