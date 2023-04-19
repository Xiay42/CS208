/*
  shell208.c
  Michael Xia, 17 February 2022
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

// The command buffer will need to have room to hold the
// command, the \n at the end of the command, and the \0.
// That's why the maximum command size is 2 less than the
// command buffer size.
#define COMMAND_BUFFER_SIZE 102
#define MAX_COMMAND_SIZE COMMAND_BUFFER_SIZE - 2

// Return values for get_command
#define COMMAND_INPUT_SUCCEEDED 0
#define COMMAND_INPUT_FAILED 1
#define COMMAND_TOO_LONG 2

int get_command(char *command_buffer, int buffer_size);
void execute_command(char *command_line);

int main()
{
    const char *prompt = "shell208> ";
    char command_line[COMMAND_BUFFER_SIZE];

    // The main infinite loop
    while (1)
    {
        printf("%s", prompt);
        fflush(stdout);

        int result = get_command(command_line, COMMAND_BUFFER_SIZE);
        if (result == COMMAND_INPUT_FAILED)
        {
            fprintf(stderr, "There was a problem reading your command. Please try again.\n");
        }
        else if (result == COMMAND_TOO_LONG)
        {
            fprintf(stderr, "Commands are limited to length %d. Please try again.\n", MAX_COMMAND_SIZE);
        }
        else
        {
            execute_command(command_line);
        }
    }
    return 0;
}

/*
    Retrieves the next line of input from stdin (where, typically, the user
    has typed a command) and stores it in command_buffer.

    The newline character (\n, ASCII 10) character at the end of the input
    line will be read from stdin but not stored in command_buffer.

    The input stored in command_buffer will be \0-terminated.

    Returns:
        COMMAND_TOO_LONG if the number of chars in the input line
            (including the \n), is greater than or equal to buffer_size
        COMMAND_INPUT_FAILED if the input system call fails
        COMMAND_INPUT_SUCCEEDED otherwise

    Preconditions:
        - buffer_size > 0
        - command_buffer != NULL
        - command_buffer points to a buffer large enough for at least buffer_size chars
*/
int get_command(char *command_buffer, int buffer_size)
{
    assert(buffer_size > 0);
    assert(command_buffer != NULL);

    if (fgets(command_buffer, buffer_size, stdin) == NULL)
    {
        return COMMAND_INPUT_FAILED;
    }

    int command_length = strlen(command_buffer);
    if (command_buffer[command_length - 1] != '\n')
    {
        // If we get here, the input line hasn't been fully read yet.
        // We need to read the rest of the input line so the unread portion
        // of the line doesn't corrupt the next command the user types.
        char ch = getchar();
        while (ch != '\n' && ch != EOF)
        {
            ch = getchar();
        }

        return COMMAND_TOO_LONG;
    }

    // remove the newline character
    command_buffer[command_length - 1] = '\0';
    return COMMAND_INPUT_SUCCEEDED;
}

void execute_command(char *command_line)
{
    // Do whatever you want to do
    printf("Here's your command: %s\n", command_line);

    // check if the command is help, this is a special case
    if (strcmp(command_line, "help") == 0)
    {
        pid_t pid = fork();

        if (pid != 0)
        {
            /* Parent */
            // left the comment here for me to keep track of parent and child
            printf("Parent just created child, ID %d\n", pid);
            fflush(stdout);

            int status;
            pid = wait(&status);
            // left the comment here for me to keep track of parent and child
            printf("My child ID %d just exited with status %d\n", pid, WEXITSTATUS(status));
            fflush(stdout);
        }
        else
        {
            /* Child */
            printf("Process %d is about to execute some help.\n", getpid());
            fflush(stdout);

            FILE *fptr;
            char filename[100], c;
            // Open file
            fptr = fopen("help.txt", "r");
            if (fptr == NULL)
            {
                printf("Cannot open file \n");
                return;
            }
            // Read contents from file
            c = fgetc(fptr);
            while (c != EOF)
            {
                printf("%c", c);
                c = fgetc(fptr);
            }
            fclose(fptr);
        }
    }
    // command line is not help, parse the command line
    else
    {
        char *my_argv[10];
        int arg_index = 0;
        char *token;
        int redirect_flag = 0;

        /* get the first token */
        token = strtok(command_line, " ");
        my_argv[arg_index] = token;
        arg_index++;

        /* get other tokens */
        while (token != NULL)
        {
            token = strtok(NULL, " ");
            my_argv[arg_index] = token;
            // if (strcmp(my_argv[arg_index], ">") == 0)
            // {
            //     redirect_flag = arg_index;
            // }
            // QUESTION: I think my index 3 and 4 of my_argv are NULL, how did that happen?
            arg_index++;
        }
        my_argv[arg_index] = NULL;

        // go through my_argv, identify the index of ">", and mark it as redirect_flag
        for (int index = 0; index <= arg_index - 2; index++)
        {
            if (strcmp(my_argv[index], ">") == 0)
            {
                redirect_flag = index;
            }
        }

        // if there's ">" in the command, we want to redirecting.
        if (redirect_flag != 0)
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
                printf("Process %d is about to execute some redirecting.\n", getpid());
                fflush(stdout);

                // Let's open a file and redirect stdout there.
                printf("the file name is: %s\n", my_argv[redirect_flag + 1]);
                const char *file_name = my_argv[redirect_flag + 1];
                int fd = open(file_name, O_RDWR | O_CREAT | O_TRUNC, 0644);
                if (fd < 0)
                {
                    perror("Trouble opening file");
                    exit(1);
                }
                if (dup2(fd, STDOUT_FILENO) < 0)
                {
                    perror("Trouble dup2-ing to stdout");
                    close(fd); // Clean up open things before you go
                    exit(1);
                }
                close(fd);

                // clear my_argv to get rid of ">" and file address, leaving only the command and arguments.
                for (int redi_argv_index = redirect_flag; redi_argv_index < arg_index; redi_argv_index++)
                {
                    my_argv[redi_argv_index] = NULL;
                }

                // Finally, execvp
                execvp(my_argv[0], my_argv);
                perror("exec failed");
                fflush(stdout);
            }
        }
        // there's no ">" in command. we can just execute the command.
        else
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
                execvp(my_argv[0], my_argv);
                perror("exec failed");
            }
        }
    }
}
