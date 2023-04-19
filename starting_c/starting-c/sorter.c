/*
    sorter.c
    Michael Xia, 9 Jan 2022
    got some of the functions from Jeff's 2d array example. (print_grid, swap_rows)
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ROW_COUNT 200
#define MAX_COLUMN_COUNT 500
void print_usage_statement(const char *program_name);
void swap_rows(char grid[][MAX_COLUMN_COUNT], int row_index_1, int row_index_2, int column_count);
void print_grid(char grid[][MAX_COLUMN_COUNT], int row_count, int column_count, FILE *output_stream);

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        print_usage_statement(argv[0]);
        return 1;
    }
    const char *input_file_name = argv[1];

    char grid[MAX_ROW_COUNT][MAX_COLUMN_COUNT];

    FILE *input_file = fopen(input_file_name, "r");
    if (input_file == NULL)
    {
        return -1;
    }

    // populated the gird with chars from the file.
    char ch = fgetc(input_file);
    int cnum = 0;
    int rnum = 0;
    int lnum = 1;
    while (ch != EOF)
    {
        if (ch != '\n')
        {
            grid[rnum][cnum] = ch;
            ch = fgetc(input_file);
            cnum++;
        }
        else
        {
            ch = fgetc(input_file);
            rnum++;
            lnum++;
            cnum = 0;
        }
    }

    // use strcmp to selection sort the lines
    int i;
    int k;
    for (i = 0; i < lnum; i++)
    {
        for (k = 0; k < lnum; k++)
        {
            const char *string1 = &grid[i - 1][MAX_COLUMN_COUNT];
            const char *string2 = &grid[k - 1][MAX_COLUMN_COUNT];
            int num = strcmp(string1, string2);
            if (num < 0)
            {
                swap_rows(grid, i, k, MAX_COLUMN_COUNT);
            }
        }
    }

    // complex way to print out the sorted text
    int x;
    for (x = 0; x < lnum; x++)
    {
        int y = 0;
        while (y != '\n')
        {
            if ((grid[x][y] <= 90 && grid[x][y] >= 65) || (grid[x][y] <= 122 && grid[x][y] >= 97) || grid[x][y] == 32)
            // I don't know how else to do this, the text editer in ubuntu is a mix of crlf and lf, I think.
            // so this is the only way I can think of to get rid of all the extra spaces that fail the test.
            {
                printf("%c", grid[x][y]);
            }
            y++;
        }
        printf("\n");
    }

    fclose(input_file);
    return 0;
}

void print_usage_statement(const char *program_name)
{
    fprintf(stderr, "Usage: %s inputfile\n", program_name);
    fprintf(stderr, "This program will sort the inputfile lexicographially\n");
}

void print_grid(char grid[][MAX_COLUMN_COUNT], int row_count, int column_count, FILE *output_stream)
{
    for (int row = 0; row < row_count; row++)
    {
        for (int column = 0; column < column_count; column++)
        {
            fputc(grid[row][column], output_stream);
        }
        fputc('\n', output_stream);
    }
    fputc('\n', output_stream);
}

// Swaps the contents of the specified rows in the grid (only swapping column data
// up to the specified column count).
void swap_rows(char grid[][MAX_COLUMN_COUNT], int row_index_1, int row_index_2, int column_count)
{
    for (int column = 0; column < column_count; column++)
    {
        char saved_char = grid[row_index_1][column];
        grid[row_index_1][column] = grid[row_index_2][column];
        grid[row_index_2][column] = saved_char;
    }
}