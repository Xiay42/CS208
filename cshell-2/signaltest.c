/*
    signaltest.c

    Started by Jeff Ondich on 3/26/96
    Last modified 16 February 2022

    This program gives a simple example of how a process
    can catch a signal.  Here, SIGINT signals (typically
    generated by the user hitting CTL-C) are caught.
*/

#include <stdio.h>
#include <signal.h>

const long limit = 20000000000;
const long frequency = 50000000;

void interrupt_handler(int);

int main()
{
    long i;

    /* The initial handler for the SIGINT signal is
       assuredly the default, so confusion will not reign */
    if (signal(SIGINT, interrupt_handler) != SIG_DFL)
    {
        fprintf(stderr, "I'm confused.\n");
    }

    /* Start counting. */
    for (i = 0; i < limit; i++)
    {
        if (i % frequency == 0)
        {
            fprintf(stderr, "%ld\n", i);
            fflush(stderr);
        }
    }

    return 0;
}

void interrupt_handler(int sig)
{
    fprintf(stderr, "\nSorry, but I just don't want to quit.\n");
    fflush(stderr);
}
