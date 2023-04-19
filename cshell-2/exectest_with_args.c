/*
    exectest_with_args.c

    Jeff Ondich, 16 February 2022

    This program gives a simple example of execvp.
    See also exectest.c.
*/

#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <ctype.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    pid_t pid = fork();

    if (pid != 0)
    {
        /* Parent */
        printf("Parent just created child, ID %d\n", pid);
        fflush(stdout);

        int status;
        pid = wait(&status);
        printf("My child ID %d just exited with status %d\n", pid, WEXITSTATUS(status));
        fflush(stdout);
    }
    else
    {
        /* Child */
        printf("Process %d is about to execute some command.\n", getpid());
        fflush(stdout);

        char *arguments = "ls\0>\0-a\0";
        int my_argc = 4;
        char *my_argv[my_argc];
        my_argv[0] = &arguments[0];
        my_argv[1] = &arguments[3];
        my_argv[2] = &arguments[5];
        my_argv[3] = NULL;

        execvp(my_argv[0], my_argv);

        perror("exec failed");
        fflush(stdout);
    }

    return 0;
}
