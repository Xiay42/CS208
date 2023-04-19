/*
    bits.c
    Michael Xia, 23 January 2022
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
    else
    {
        for (int i = 0; i < strlen(s); i++)
        {
            if (islower(s[i]))
            {
                s[i] = s[i] ^ 32;
            }
        }
    }
}

void to_lower(char *s)
{
    if (s == NULL)
    {
        return;
    }
    else
    {
        for (int i = 0; i < strlen(s); i++)
        {
            if (isupper(s[i]))
            {
                s[i] = s[i] | (32);
            }
        }
    }
}

int middle_bits(int n, int bit_index, int bit_count)
{
    n = n << (32 - bit_index - bit_count);
    n = n >> (32 - bit_count);
    // another way to get the sign operator is : int signOpertor = pow(2, count) - 1;
    // but pow only take numbers, not variables.
    unsigned int signOperator = 0xffffffff;
    signOperator = signOperator >> (32 - bit_count);
    n = n & signOperator;
    // printf("0x%08x\n", n);
    return n;
}

bool to_utf8(int codepoint, char *utf8_buffer)
{
    if (utf8_buffer != NULL)
    {
        if (codepoint < 0x007f && codepoint > 0x0000)
        {
            // code for 1 byte
            utf8_buffer[0] = codepoint;
            utf8_buffer[1] = '\0';
        }
        else if ((0x0080 < codepoint) & (codepoint < 0x07ff))
        {
            // code for 2byte
            // use middle bits to get the 6 bits for buffer[1] and the 5 bits for buffer[0]
            // 6 bits data |(or)with 10000000 to add 10 in front of that 6 bits
            // put the whole thing in buffer 1
            utf8_buffer[0] = middle_bits(codepoint, 6, 5) | 0xc0;
            utf8_buffer[1] = middle_bits(codepoint, 0, 6) | 0x80;
            utf8_buffer[2] = '\0';
        }
        else if ((0x0800 < codepoint) & (codepoint < 0xffff))
        {
            utf8_buffer[0] = middle_bits(codepoint, 12, 4) | 0xe0;
            utf8_buffer[1] = middle_bits(codepoint, 6, 6) | 0x80;
            utf8_buffer[2] = middle_bits(codepoint, 0, 6) | 0x80;
            utf8_buffer[3] = '\0';
        }
        else if ((0x10000 < codepoint) & (codepoint < 0x10ffff))
        {
            utf8_buffer[0] = middle_bits(codepoint, 18, 3) | 0xf0;
            utf8_buffer[1] = middle_bits(codepoint, 12, 6) | 0x80;
            utf8_buffer[2] = middle_bits(codepoint, 6, 6) | 0x80;
            utf8_buffer[3] = middle_bits(codepoint, 0, 6) | 0x80;
            utf8_buffer[4] = '\0';
        }
        else
        {
            // invalid codepoint, return false;
            return false;
        }
    }
    else
    {
        // buffer is NULL, return false;
        return false;
    }
    return true;
}

int from_utf8(char *utf8_buffer)
{
    int codepoint = 0;

    if (strlen(utf8_buffer) == 1)
    {
        codepoint = utf8_buffer[0];
    }
    else if (strlen(utf8_buffer) == 2)
    {
        int firstByte = 0;
        int secondByte = 0;
        firstByte = middle_bits((utf8_buffer[0] & 0x1f), 0, 5);
        firstByte = firstByte << 6;
        secondByte = middle_bits((utf8_buffer[1] & 0x3f), 0, 6);
        codepoint = firstByte | secondByte;
    }
    else if (strlen(utf8_buffer) == 3)
    {
        int firstByte = 0;
        int secondByte = 0;
        int thirdByte = 0;

        firstByte = middle_bits((utf8_buffer[0] & 0x0f), 0, 4);
        firstByte = firstByte << 12;
        secondByte = middle_bits((utf8_buffer[1] & 0x3f), 0, 6);
        secondByte = secondByte << 6;
        thirdByte = middle_bits((utf8_buffer[2] & 0x3f), 0, 6);
        codepoint = firstByte | secondByte | thirdByte;
    }
    else if (strlen(utf8_buffer) == 4)
    {
        int firstByte = 0;
        int secondByte = 0;
        int thirdByte = 0;
        int fourthByte = 0;

        firstByte = middle_bits((utf8_buffer[0] & 0x07), 0, 3);
        firstByte = firstByte << 18;
        secondByte = middle_bits((utf8_buffer[1] & 0x3f), 0, 6);
        secondByte = secondByte << 12;
        thirdByte = middle_bits((utf8_buffer[2] & 0x3f), 0, 6);
        thirdByte = thirdByte << 6;
        fourthByte = middle_bits((utf8_buffer[3] & 0x3f), 0, 6);
        codepoint = firstByte | secondByte | thirdByte | fourthByte;
    }
    else
    {
        return -1;
    }
    return codepoint;
}
