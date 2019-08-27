#include <stdio.h>
extern int* primerMaximo(int** matriz, int* f, int* c);

int main(){
    int f = 2;
    int c = 3;
    int m[f][c];
    m[0][0] = 1;
    m[0][1] = 10;
    m[0][2] = 3;
    m[1][0] = 10;
    m[1][1] = 5;
    m[1][2] = 6;

    int* max = primerMaximo((int**)m, &f, &c);
    printf("El maximo es 0x%x: %i\n", max, *max);
    printf("La otra aparicion es 0x%x: %i\n", &m[1][0], m[1][0]);
    return 0;
};