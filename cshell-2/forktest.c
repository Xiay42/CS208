/*
    forktest.c
    
    Started by Jeff Ondich on 3/26/96
    Last modified 2/16/22
    
    This program gives a simple example of fork, and how
    a process can create a child process.
*/

#include    <stdio.h>
#include    <unistd.h>

const long LIMIT = 10000000000;
const long FREQUENCY = 500000000;

int main() {
    if (fork() == 0) {
        /* child */
        pid_t process_id = getpid();
        for (long k=0; k < LIMIT; k++) {
            if (k % FREQUENCY == 0) {
                 printf("CHILD [%d]: %ld\n", process_id, k);
            }
        }

    } else {
        /* parent */
        pid_t process_id = getpid();
        for (long k=0; k < LIMIT; k++) {
            if (k % FREQUENCY == 0) {
                printf("PARENT [%d]: %ld\n", process_id, k);
            }
        }
    }

    return 0;
}
