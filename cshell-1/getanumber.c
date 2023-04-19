/*
    getanumber.c
    Jeff Ondich, sometime in the 90's
    Updated 16 February 2022

    Trivial program to help exectest.c illustrate exec and wait.
*/
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
    int k = -1;
    pid_t process_id = getpid();
    printf("\nGo ahead, enter a string: ");

    if (scanf("%s", &k) != 1)
    {
        printf("That wasn't a string!\n");
    }
    printf("Process %d is departing this mortal coil with status %d. Adieu.\n\n", process_id, k);

    exit(k);
}
