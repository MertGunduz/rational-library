/* increaseRationalsEx.c */

#include <stdio.h>
#include "../include/rational.h"

int main(void)
{
    /* Defining a rational */
    rational exampleRational = {2, 4};

    /* Before increasing the rational value */
    fprintf(stdout, "Before Increaseing --> [%d / %d]\n", exampleRational.numerator, exampleRational.denominator);

    /* Increasing the rational */
    increaseRational(&exampleRational);

    /* After increasing the rational value */
    fprintf(stdout, "After Increaseing --> [%d / %d]\n", exampleRational.numerator, exampleRational.denominator);
    return 0;
}