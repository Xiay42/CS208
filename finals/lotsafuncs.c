#include <stdio.h>

int do_something(int a, int b, int c, int d, int e, int f, int g)
{
    return a + b + c + d + e + f + g;
}

int main()
{
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 4;
    int e = 5;
    int f = 6;
    int g = 7;

    printf("%d\n", do_something(a, b, c, d, e, f, g));

    return 0;
}