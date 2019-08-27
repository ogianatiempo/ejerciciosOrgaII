main: main.c diagonal.o
	gcc -o ejec main.c diagonal.o

diagonal.o: diagonal.asm
	nasm -f elf64 diagonal.asm -o diagonal.o

clean:
	rm diagonal.o