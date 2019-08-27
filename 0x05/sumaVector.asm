global sumaVector

section .text
sumaVector:
    ;short sumaVector(short* v, short n);
    ;rdi = v, si = n
    push rbp
    mov rbp, rsp
    xor rax, rax
    xor rcx, rcx
    mov cx, si
.ciclo:
    add ax, [rdi + rcx * 2 - 2]
    loop .ciclo
    pop rbp
    ret
