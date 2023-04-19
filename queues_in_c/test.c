#include <stdio.h>
#include <string.h>

int main()
{
    char s[4];
    s[0] = 'A';
    s[1] = '\0';
    s[2] = 'B';
    s[3] = 'C';
    printf("%s\n", s);
}