#include <stdio.h>
extern void diagonal(short* matriz, short n, short* vector);

int main(){
    short n = 3;
    short m[n][n];
    m[0][0] = 1;
    m[0][1] = 2;
    m[0][2] = 3;
    m[1][0] = 4;
    m[1][1] = 5;
    m[1][2] = 6;
    m[2][0] = 7;
    m[2][1] = 8;
    m[2][2] = 9;

    short v[n];

    diagonal((short*)m, n, v);

    for (short i = 0; i<n; i++){
        printf("%d\n", v[i]);
    }
    return 0;
};