/*
    bits.c
    Jeff Ondich, 19 January 2022
*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "bits.h"

void to_upper(char *s)
{
    if (s == NULL)
    {
        return;
    }
    for (int i = 0; i < strlen(s); i++)
    {
        // printf("%c", s[i]);
        // fflush(stdout);
        if (!isupper(s[i]))
        {
            s[i] = s[i] ^ 32;
        }
        // printf("%c", s[i]);
        // fflush(stdout);
    }
}

void to_lower(char *s)
{
    if (s == NULL)
    {
        return;
    }
    for (int i = 0; i < strlen(s); i++)
    {
        // printf("%c", s[i]);
        // fflush(stdout);
        if (!islower(s[i]))
        {
            s[i] = s[i] & (!32);
        }
        // printf("%c", s[i]);
        // fflush(stdout);
    }
}

int middle_bits(int n, int bit_index, int bit_count)
{
    return 0;
}

bool to_utf8(int codepoint, char *utf8_buffer)
{
    return false;
}

int from_utf8(char *utf8_buffer)
{
    return -1;
}
