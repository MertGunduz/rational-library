/* decreaseRationalsEx.c */

#include <stdio.h>
#include "../include/rational.h"

int main(void)
{
    /* Defining a rational */
    rational exampleRational = {2, 4};

    /* Before decreasing the rational value */
    fprintf(stdout, "Before Decreasing --> [%d / %d]\n", exampleRational.numerator, exampleRational.denominator);

    /* Decreasing the rational */
    decreaseRational(&exampleRational);

    /* After decreasing the rational value */
    fprintf(stdout, "After Decreasing --> [%d / %d]\n", exampleRational.numerator, exampleRational.denominator);
    return 0;
}