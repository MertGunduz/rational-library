/* getRationalGcdEx.c */

#include <stdio.h>
#include "../src/rational.h"

int main(void)
{
    /* Defining a rational */
    rational exampleRational = {48, 60};

    /* taking a great common divisor of the rational number */
    int gcd = getRationalGcd(exampleRational);

    /* Before decreasing the rational value */
    fprintf(stdout, "GCD of rational number --> [%d]\n", gcd);
    return 0;
}