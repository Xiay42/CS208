/*
    main.c
    Jeff Ondich, 19 January 2022
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "bits.h"
#include <math.h>
int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        fprintf(stderr, "Usage: %s action [arguments...]\n", argv[0]);
        fprintf(stderr, "  where action can be to_upper, to_lower,...\n");
        fprintf(stderr, "  and arguments are appropriate to the specific action.\n");
        return 1;
    }

    if (strcmp(argv[1], "to_upper") == 0)
    {
        char *buffer = malloc(strlen(argv[2]) + 1);
        if (buffer != NULL)
        {
            strcpy(buffer, argv[2]);
            to_upper(buffer);
            printf("%s\n", buffer);
            free(buffer);
        }
    }

    else if (strcmp(argv[1], "to_lower") == 0)
    {
        char *buffer = malloc(strlen(argv[2]) + 1);
        if (buffer != NULL)
        {
            strcpy(buffer, argv[2]);
            to_lower(buffer);
            printf("%s\n", buffer);
            free(buffer);
        }
    }

    else if (strcmp(argv[1], "to_utf8") == 0)
    {
        char *buffer = malloc(10 * sizeof(char));
        if (buffer != NULL)
        {
            int codepoint = 0x20ac;
            to_utf8(codepoint, buffer);
            printf("%s\n", buffer);
            free(buffer);
        }
    }

    else if (strcmp(argv[1], "from_utf8") == 0)
    {
        char *buffer = malloc(10 * sizeof(char));

        if (buffer != NULL)
        {
            buffer[0] = 0xf0;
            buffer[1] = 0x90;
            buffer[2] = 0x8d;
            buffer[3] = 0x88;
            buffer[4] = 0x00;
            printf("buffer: %s\n", buffer);
            printf("Codepoint: 0x%08x\n", from_utf8(buffer));
            free(buffer);
        }
    }

    return 0;
}
