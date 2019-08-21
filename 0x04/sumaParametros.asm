global sumaParametros

section .text
sumaParametros:
    push rbp
    mov rbp, rsp
    mov rax, rdi
    sub rax, rsi
    add rax, rdx
    sub rax, rcx
    add rax, r8
    sub rax, r9
    add rax, [rbp + 16]
    sub rax, [rbp + 24]
    pop rbp
    ret

