main: main.c sumaEnteros.o
	gcc -o ejec main.c sumaEnteros.o

sumaEnteros.o: sumaEnteros.asm
	nasm -f elf64 sumaEnteros.asm -o sumaEnteros.o

clean:
	rm sumaEnteros.o