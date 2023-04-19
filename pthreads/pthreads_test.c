/*
Michael Xia
3.5.2023
*/

// questions:
// didn't use pthread_join and worker thread does not reaturn to main
// how to convert string to int and how am i casting void pointer to int correctly

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <pthread.h>
#include <string.h>
#include <stdint.h>
#include <signal.h>

// The shared variable and its lock
// bool time_to_quit;
int thread_count = 0;
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

// The thread start routines
void *worker_thread_main(void *arg);
int is_prime(int n);
void interrupt_handler(int sig)
{
    fprintf(stderr, "[main] press q or Q to quit!\n");
    fflush(stderr);
}

int main()
{
    pthread_t worker_thread;

    while (1)
    {
        char buffer[10];
        printf("!!!!!!!!!!!!!!!!!!!![main] Hit q when you're ready to quit!!!!!!!!!!!!!!!!!!!!!!\n");
        fflush(stdout);
        signal(SIGINT, interrupt_handler);

        char *input = fgets(buffer, 10, stdin);
        if (input == NULL)
        {
            fprintf(stderr, "[main] forced quit (ctrl + d) \n");
            break;
        }

        // don't really know how this works
        long value = strtol(input, NULL, 10);

        // check if the command is q, and if the value is positive
        if (strncmp(input, "q", 1) != 0 && strncmp(input, "Q", 1) != 0 && value >= 0)
        {

            printf("[main] Creating the worker threads\n");
            fflush(stdout);

            if (pthread_create(&worker_thread, NULL, worker_thread_main, (void *)value) != 0)
            {
                perror("[main] Can't create worker thread.\n");
                exit(1);
            }
        }
        // check is the command is q and if the thread count is 0
        else if ((strncmp(input, "q", 1) == 0 || strncmp(input, "Q", 1) == 0))
        {
            // wait for thread count to drop to 0, to break out of the loop.
            while (1)
            {
                pthread_mutex_lock(&lock);
                if (thread_count == 0)
                {
                    break;
                }
                pthread_mutex_unlock(&lock);
            }
            printf("[main] quitting...\n");
            break;
        }
        // handdle incorrect input
        else
        {
            printf("[main] not a valid input!\n");
        }
    }

    printf("[main] Bye!\n");
    fflush(stdout);

    return 0;
}

void *worker_thread_main(void *arg)
{

    printf("[Worker thread] Let's prime!\n");
    fflush(stdout);

    // +1 to thread counter
    pthread_mutex_lock(&lock);
    thread_count++;
    // printf("[Worker thread] adding 1 to t_counter: %i\n", thread_count);
    pthread_mutex_unlock(&lock);

    // count prime number
    int prime_count = 0;
    long intptr = (long)arg;
    for (int i = 0; i < intptr; i++)
    {
        if (is_prime(i) == 1)
        {
            prime_count++;
        }
    }

    printf("[Worker thread] prime count for %ld: %d\n", intptr, prime_count);
    fflush(stdout);

    // -1 to thread counter
    pthread_mutex_lock(&lock);
    thread_count--;
    // printf("[worker thread] subbing 1 from t_counter: %i\n", thread_count);
    pthread_mutex_unlock(&lock);

    return NULL;
}

// returns 1 if n is prime, 0 otherwise.
int is_prime(int n)
{
    if (n <= 1)
    {
        return 0;
    }

    for (int k = 2; k < n; k++)
    {
        if (n % k == 0)
        {
            return 0;
        }
    }
    return 1;
}