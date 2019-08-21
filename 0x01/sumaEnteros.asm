global sumaEnteros

section .text
sumaEnteros:
    push rbp
    mov rbp, rsp
    mov rax, rdi
    add rax, rsi
    pop rbp
    ret

