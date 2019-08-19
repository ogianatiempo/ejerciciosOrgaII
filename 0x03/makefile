main: main.c imprimeParametros.o
	gcc -no-pie -o ejec main.c imprimeParametros.o

imprimeParametros.o: imprimeParametros.asm
	nasm -f elf64 imprimeParametros.asm -o imprimeParametros.o

clean:
	rm imprimeParametros.o