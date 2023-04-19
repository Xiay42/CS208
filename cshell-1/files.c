/*
    files.c
    Jeff Ondich, 17 February 2022
 
    Using the low-level file access functions open/read/write/close
    and file descriptors.

    IMPORTANT:
    (1) You should read the manual pages, at least the description and
        and return values sections, of open, read, write, and close.

    (2) To read those manual pages, you should specify "section 2 of
        the Unix manual" by doing:

            man 2 read
            man 2 write
            etc.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>
#include <fcntl.h>

#define BUFFER_LENGTH 100

void file_reading_example(char *file_name);
void file_writing_example(char *file_name);

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Usage: %s file_to_read file_to_write\n", argv[0]);
        return 1;
    }

    file_reading_example(argv[1]);
    file_writing_example(argv[2]);

    return 0;
}

void file_reading_example(char *file_name) {
    // Open a file for reading.
    int input_file_descriptor = open(file_name, O_RDONLY);
    if (input_file_descriptor < 0) {
        perror("Sad attempt to open a file for reading");
        exit(1);
    }

    // Count the number of letters in the file.
    char buffer[BUFFER_LENGTH];
    int letter_count = 0;
    int byte_count = read(input_file_descriptor, buffer, BUFFER_LENGTH);
    while (byte_count > 0) {
        for (int k = 0; k < byte_count; k++) {
            if (isalpha(buffer[k])) {
                letter_count++;
            }
        }

        byte_count = read(input_file_descriptor, buffer, BUFFER_LENGTH);
    }

    if (byte_count < 0) {
        perror("Reading error");
        exit(1);
    }

    close(input_file_descriptor);

    printf("%s contains %d letters\n", file_name, letter_count);

    // More experienced C programmers would modify the above code like so:
    // 
    // int fd = open("moose.txt", O_RDONLY);
    // ...
    // while ((byte_count = read(fd, buffer, BUFFER_LENGTH)) > 0) {
    //     ...
    // }
    //
    // That is, they would (1) use the conventional "fd" in place of the extremely
    // verbose "input_file_descriptor", and they would (2) use the conventional
    // "assignment-statement-inside-while-condition" to avoid duplicating
    // the code "byte_count = read(...)".
}

void file_writing_example(char *file_name) {
    // Open a file for reading.
    int fd = open(file_name, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0) {
        perror("Sad attempt to open a file for writing");
        exit(1);
    }

    // Count the number of letters in the file.
    char *text = "cat\ndog\ntardigrade\n";
    int byte_count = write(fd, text, strlen(text));
    if (byte_count < 0) {
        perror("Trouble writing to file");
        exit(1);
    }

    close(fd);
}

