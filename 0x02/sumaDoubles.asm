global sumaDoubles

section .text
sumaDoubles:
    push rbp
    mov rbp, rsp
    addpd xmm0, xmm1
    pop rbp
    ret

