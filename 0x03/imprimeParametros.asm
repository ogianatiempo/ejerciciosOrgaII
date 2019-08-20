global imprimeParametros
extern printf

section .data
    format: db 'a = %i, b = %f, c = %s', 0

section .text
imprimeParametros:      ;void imprime_parametros(int a, double f, char* s);
                        ;rdi = a, xmm0 = f, rsi = s 
    push rbp            ;Preservar rbp
    mov rbp, rsp        ;Nuevo rbp
    mov rdx, rsi        ;s -> rdx
    mov rsi, rdi        ;a -> rsi
    mov rdi, format     ;format -> rdi
    mov rax, 1          ;rax indica cuantos registros xmm se usan
    call printf         ;f ya estaba en xmm0 
    pop rbp             ;Restaurar rbp
    ret
