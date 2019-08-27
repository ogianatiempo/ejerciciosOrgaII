main: main.c primerMaximo.o
	gcc -o ejec main.c primerMaximo.o

primerMaximo.o: primerMaximo.asm
	nasm -f elf64 primerMaximo.asm -o primerMaximo.o

clean:
	rm primerMaximo.o