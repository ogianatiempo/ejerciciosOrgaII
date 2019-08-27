global diagonal

section .text
diagonal:
    ;void diagonal(short* matriz, short n, short* vector);
    ;rdi = matriz, si = n, rdx = vector
    push rbp
    mov rbp, rsp
    push r12
    shl rsi, 48             ;Vacia la parte alta
    shr rsi, 48
    lea r12, [rsi * 2 + 2]  ;salto entre filas
.ciclo:
    test rsi, rsi
    jz .fin
    mov ax, [rdi]
    mov [rdx], ax
    add rdi, r12
    add rdx, 2
    dec rsi
    jmp .ciclo
.fin:
    pop r12
    pop rbp
    ret
