#include <stdio.h>
extern int sumaParametros(int, int, int, int, int, int, int, int);

int main(){
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 4;
    int e = 5;
    int f = 6;
    int g = 7;
    int h = 8;
    printf(
        "%i - %i + %i - %i + %i - %i + %i - %i = %i\n",
        a, b, c, d, e, f, g, h,
        sumaParametros(a, b, c, d, e, f, g, h)
    );
    return 0;
};