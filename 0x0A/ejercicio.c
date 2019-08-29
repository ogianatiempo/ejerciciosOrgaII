#include <stdio.h>
#include <stdlib.h>

struct nodo{
	int dato;
	struct nodo *prox;
};
struct lista{
	struct nodo *primero;
};

void borrar(struct nodo** n) {
	struct nodo* uNodo = *n;
	*n = NULL;
	free(uNodo);
}

void borrarUltimo(struct lista *unaLista) {
	struct nodo** prox = &(unaLista->primero);
	struct nodo** ant = prox;
	while(*prox != NULL) {
		ant = prox;
		prox = &((*prox)->prox);
	}
	borrar(ant);
}

void agregarPrimero(struct lista* unaLista, int unInt) {
	struct nodo* sig = unaLista->primero;
	struct nodo* prim = malloc(sizeof(struct nodo));
	prim->dato = unInt;
	prim->prox = sig;
	unaLista->primero = prim;
}