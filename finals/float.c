/*
  float.c
  Michael Xia, 3 March 2022
*/

#include <stdio.h>

int main()
{

  float x = 55.375;
  printf("x = %.4f\n", x);
  unsigned int n = *((unsigned int *)(&x));
  printf("x's floating point representation = 0x%x\n", n);

  float nan = 0.0 / 0.0;
  printf("%f\n", nan);

  float neg_inf = -5.0 / 0.0;
  printf("%f\n", neg_inf);

  return 0;
}
