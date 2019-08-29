# Ejercicio 0x0A

Estructuras:

```C
struct lista {
    nodo *primero;
};

struct nodo {
    int dato;
    nodo *prox;
};
```

Escribir en ASM las siguientes funciones:

```C
void agregarPrimero(lista* unaLista, int unInt);
```

Toma una lista y agrega un nuevo nodo en la primera posición. Su dato debe ser el valor de unInt pasado por parámetro.

```C
void borrarUltimo(lista *unaLista);
```

Toma una lista cualquiera y de existir, borra el ultimo nodo de la lista.

```C
void borrarPrimero(lista *unaLista);
```

Toma una lista cualquiera y de existir, borra el primer nodo de la lista.

```C
void agregarUltimo(lista* unaLista, int unInt);
```

Toma una lista y agrega un nuevo nodo en la ultima posición. Su dato debe ser el valor de unInt pasado por parámetro.
