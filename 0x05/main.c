#include <stdio.h>
extern short sumaVector(short* v, short n);

int main(){
    short v[4];
    v[0] = 1;
    v[1] = 3;
    v[2] = 5;
    v[3] = 1;

    printf("La suma es %d.\n", sumaVector(v, 4));
    return 0;
};