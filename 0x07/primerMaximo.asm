global primerMaximo

section .text
primerMaximo:
    ;int* primerMaximo(int (*matriz)[sizeC], int* f, int* c);
    ;rdi = matriz, rsi = f, rdx = c
    push rbp
    mov rbp, rsp
    xor rax, rax
    mov eax, [rsi]
    mul dword [rdx]
    mov rsi, rax                ;rsi = f * c
    mov rax, rdi                ;rax <- direccion primer elemento
    xor rcx, rcx                ;rcx = 0
.loop:
    cmp rcx, rsi
    je .fin                     ;while rcx < f * c
    mov edx, [rdi + rcx * 4]
    cmp edx, [rax]
    jg .reemplazo               ;reemplazo si elemento actual mayor maximo
    inc rcx
    jmp .loop
.reemplazo:
    lea rax, [rdi + rcx * 4]
    inc rcx
    jmp .loop
.fin:
    pop rbp
    ret
