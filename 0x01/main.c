#include <stdio.h>
extern int sumaEnteros(int, int);

int main(){
    int res = sumaEnteros(44,10);
    printf("La suma de 44 y 10 es %d.\n", res);
    return 0;
};