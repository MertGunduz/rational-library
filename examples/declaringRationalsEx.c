/* declaringRationalsEx.c */

#include <stdio.h>
#include "../src/rational.h"

int main(void)
{
    /* Defining a rational */
    rational exampleRational = {2, 4};

    /* Printing the rational number */
    fprintf(stdout, "[%d / %d]\n", exampleRational.numerator, exampleRational.denominator);

    return 0;
}