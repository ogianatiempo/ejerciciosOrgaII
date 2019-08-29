global borrarUltimo
global agregarPrimero
extern free
extern malloc

%define NULL 0
; Definir los offsets para nodo
%define nodo_offset_dato 0
%define nodo_offset_prox 8
; Definir los offsets para lista
%define lista_offset_primero 0
; Definir el tamaño de los nodos
%define tam_nodo 16

borrar:
	; void borrar(struct nodo** n)
	; rdi = n
	push rbp
	mov rbp, rsp
	mov rsi, rdi
	mov rdi, [rdi]
	mov qword [rsi], 0
	call free
	pop rbp
	ret

borrarUltimo:
	; void borrarUltimo(struct lista *unaLista)
	; rdi = unalista
	push rbp
	mov rbp, rsp
	lea rsi, [rdi + lista_offset_primero]	; rsi = prox
	mov rdi, rsi							; rdi = ant
.loop:
	mov rax, [rsi]  
	cmp rax, 0
	je .fin
	mov rdi, rsi
	mov rsi, [rsi]
	add rsi, nodo_offset_prox
	jmp .loop
.fin:
	call borrar
	pop rbp
	ret

agregarPrimero:
	; void agregarPrimero(struct lista* unaLista, int unInt)
	; rdi = unaLista, esi = unInt
	push rbp
	mov rbp, rsp
	sub rsp, 8
	push r12
	push r13
	mov r12, rdi							; puntero a la lista
	mov r13d, esi							; unInt
	mov rdi, tam_nodo
	call malloc
	mov rcx, [r12 + lista_offset_primero]	; rcx puntero al primero viejo
	mov [eax + nodo_offset_prox], rcx
	mov [eax + nodo_offset_dato], r13d
	mov [r12 + lista_offset_primero], rax
	pop r13
	pop r12
	add rsp, 8
	pop rbp
	ret
