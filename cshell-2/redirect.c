/*
 	redirect.c
 	Jeff Ondich, 16 April 2002
    Updated 17 February 2022

 	This program illustrates the use of the dup2 function
    to redirect stdout to a file.

    What changes would you need to make to adapt this code
    to redirect stdin?
*/

#include	<stdio.h>
#include	<stdlib.h>
#include	<unistd.h>
#include	<sys/types.h>
#include	<sys/stat.h>
#include	<fcntl.h>
#include	<ctype.h>

int main() {
    // Before redirecting, printf should print to the default stdout.
    printf("This should go to the screen (unless you used >, you sneaky devil!)\n");
    fflush(stdout);

    // Let's open a file and redirect stdout there.
    const char *file_name = "elk.txt";
	int fd = open(file_name, O_RDWR | O_CREAT | O_TRUNC, 0644);
	if (fd < 0) {
		perror("Trouble opening file");
		exit(1);
	}

	if (dup2(fd, STDOUT_FILENO) < 0) {
		perror("Trouble dup2-ing to stdout");
		close(fd); // Clean up open things before you go
		exit( 1 );
	}

	close(fd); // Do you understand what this line is for?

    // Finally, try printf again. It should go to the file.
    printf("This goes to the newly redirected stdout.\n");
    fflush(stdout);

	return 0;
}
