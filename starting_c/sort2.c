#include <stdio.h>
#include <string.h>

void print_usage_statement(const char *program_name);
int sortFile(const char *file_name);
int getLineNum(const char *file_name);

int main(int argc, char *argv[])
{
    // Parse the command line
    if (argc != 2)
    {
        print_usage_statement(argv[0]);
        return 1;
    }
    const char *input_file_name = argv[1];

    // Do the work
    char output = sortFile(input_file_name);
    // perform checks to see if the input file is empty
    printf("%c\n", output);

    return 0;
}

void print_usage_statement(const char *program_name)
{
    fprintf(stderr, "Usage: %s inputfile\n", program_name);
    fprintf(stderr, "This program will sort the inputfile lexicographially\n");
}

int sortFile(const char *file_name)
{
    FILE *input_file = fopen(file_name, "r");
    if (input_file == NULL)
    {
        return -1;
    }

    // char ch = fgetc(input_file);
    // int endOfLineCount = 1;
    // while (ch != EOF)
    // {
    //     if (ch == 13)
    //     {
    //         endOfLineCount++;
    //     }
    //     ch = fgetc(input_file);
    // }

    char line[500];
    char line2[500] int i;
    int num = getLineNum(file_name);
    char sorted[500];
    printf("hello\n");
    fflush(stdout);
    for (i = 0; i < num; ++i)
    {
        printf("%i", i);
        char *min = fgets(line, 500, input_file);
        int k;
        for (k = 0; k < num; ++k)
        {
            char *b = fgets(line, 500, input_file);
            if (strcmp(min, b) > 0)
            {
                min = b;
            }
            printf("%s", sorted);
        }
        printf("%s", sorted);
        strcat(min)
    }

    fclose(input_file);
    return 0;
}

// put getLineNumber in a new function and return an int to the main function
// in main, pass that int to sortFiles

int getLineNum(const char *file_name)
{
    FILE *input_file = fopen(file_name, "r");
    if (input_file == NULL)
    {
        return -1;
    }

    char ch = fgetc(input_file);
    int endOfLineCount = 1;
    while (ch != EOF)
    {
        if (ch == 13)
        {
            endOfLineCount++;
        }
        ch = fgetc(input_file);
    }
    // printf("%i", endOfLineCount);
    fclose(input_file);
    return endOfLineCount;
}