main: main.c sumaDoubles.o
	gcc -o ejec main.c sumaDoubles.o

sumaDoubles.o: sumaDoubles.asm
	nasm -f elf64 sumaDoubles.asm -o sumaDoubles.o

clean:
	rm sumaDoubles.o