/*
    shoutify.c
    Michael Xia, 9 Jan 2022
*/

#include <stdio.h>
#include <string.h>

void print_usage_statement(const char *program_name);
int upperfy(const char *Input_file_name, const char *Output_file_name);

int main(int argc, char *argv[])
{
    // Parse the command line
    if (argc != 3)
    {
        print_usage_statement(argv[0]);
        return 1;
    }
    const char *input_file_name = argv[1];
    const char *output_file_name = argv[2];

    // Do the work
    upperfy(input_file_name, output_file_name);
    return 0;
}

void print_usage_statement(const char *program_name)
{
    fprintf(stderr, "Usage: %s inputfile outputfile\n", program_name);
    fprintf(stderr, "This program will copy the contents of inputfile to outputfile\n");
    fprintf(stderr, "with each letter changed to their uppercase equivalents\n");
}

int upperfy(const char *Input_file_name, const char *Output_file_name)
{
    // Open the file for reading and writing
    FILE *input_file = fopen(Input_file_name, "r");
    if (input_file == NULL)
    {
        return -1;
    }
    FILE *output_file = fopen(Output_file_name, "w");
    if (output_file == NULL)
    {
        return -1;
    }
    // Loop through the file one char/byte at a time, turning them to upper case as we go.
    char ch = fgetc(input_file);
    while (ch != EOF)
    {
        if (ch <= 122 && ch >= 97)
        {
            char CH = ch - 32;
            fputc(CH, output_file);
        }
        else
        {
            fputc(ch, output_file);
        }
        ch = fgetc(input_file);
    }
    if (ferror(input_file))
    {
        fclose(input_file);
        return -1;
    }

    // Clean up after ourselves.
    fclose(input_file);
    fclose(output_file);

    return 0;
}
