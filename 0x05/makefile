main: main.c sumaVector.o
	gcc -o ejec main.c sumaVector.o

sumaVector.o: sumaVector.asm
	nasm -f elf64 sumaVector.asm -o sumaVector.o

clean:
	rm primerMaximo.o