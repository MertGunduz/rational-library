/* subtractRationalsEx.c */

#include <stdio.h>
#include "../include/rational.h"

int main(void)
{
    /* defining two rationals */
    rational exampleRational1 = {4, 2};
    rational exampleRational2 = {2, 2};
    
    /* subtracting example rationals and assigning the value into a new rational */
    rational newRational = subtractRationals(exampleRational1, exampleRational2);
    
    /* printing the results */
    fprintf(stdout, "New Rational --> %d / %d\n", newRational.numerator, newRational.denominator);
    return 0;
}