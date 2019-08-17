holaMundo: holaMundo.o
	ld -o holaMundo holaMundo.o

holaMundo.o: holaMundo.asm
	nasm -f elf64 holaMundo.asm

clean:
	rm holaMundo holaMundo.o