global imprimeParametros
extern printf

section .data
    format: db 'a = %i, b = %f, c = %s', 0

section .text
imprimeParametros:      ;void imprime_parametros(int a, double f, char* s);
                        ;rdi = a, xmm0 = f, rsi = s 
    push rbp            ;Preservar rbp
    mov rbp, rsp        ;Nuevo rbp
    sub rsp, 24         ;Para que quede alineada la pila a 16 bytes
    push rbx            ;Preservar resto de registros
    push r12
    push r13
    push r14
    push r15
    mov rdx, rsi        ;s -> rdx
    mov rsi, rdi        ;a -> rsi
    mov rdi, format     ;format -> rdi
    mov rax, 1          ;rax indica cuantos registros xmm se usan
    call printf         ;f ya estaba en xmm0 
    pop r15             ;Restaurar todo
    pop r14
    pop r13
    pop r12
    pop rbx
    add rsp, 24         ;Dejar la pila como estaba
    pop rbp             ;Restaurar rbp
    ret