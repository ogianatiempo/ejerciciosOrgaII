#include <stdio.h>
extern double sumaDoubles(double, double);

int main(){
    double a = 44.1;
    double b = 10.2;
    printf("La suma de %f y %f = %f\n", a, b, sumaDoubles(a, b));
    return 0;
};