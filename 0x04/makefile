main: main.c sumaParametros.o
	gcc -o ejec main.c sumaParametros.o

sumaParametros.o: sumaParametros.asm
	nasm -f elf64 sumaParametros.asm -o sumaParametros.o

clean:
	rm sumaParametros.o