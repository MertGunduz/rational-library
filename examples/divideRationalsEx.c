/* divideRationalsEx.c */

#include <stdio.h>
#include "../src/rational.h"

int main(void)
{
    /* defining two rationals */
    rational exampleRational1 = {2, 3};
    rational exampleRational2 = {1, 2};
    
    /* divide example rationals and assigning the value into a new rational */
    rational newRational = divideRationals(exampleRational1, exampleRational2);
    
    /* printing the results */
    fprintf(stdout, "New Rational --> %d / %d\n", newRational.numerator, newRational.denominator);
    return 0;
}