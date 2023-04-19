/*
    pipe.c
    Jeff Ondich, 15 April 2004
    Updated 17 February 2022
 
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <ctype.h>

int main() {
    int fd[2];

    if (pipe(fd) < 0) {
        perror("Trouble creating pipe");
        exit(1);
    }

    printf("Pipe file descriptors: fd[0]=%d, fd[1]=%d\n", fd[0], fd[1]);

    int pid = fork();
    if (pid < 0) {
        perror("Trouble forking");
        exit(1);
    }

    if (pid != 0) {
        close(fd[0]);
        if (dup2(fd[1], STDOUT_FILENO) == -1) {
            perror("Trouble redirecting stdout");
        }
        close(fd[1]);

        execlp("ls", "ls", NULL);
        perror("execlp in parent failed");

    } else {
        close(fd[1]);
        if (dup2(fd[0], STDIN_FILENO ) == -1) {
            perror("Trouble redirecting stdin");
        }
        close(fd[0]);

        execlp("wc", "wc", "-l", NULL);
        perror("execlp in child failed" );
    }

    return 0;
}
