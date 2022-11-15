/* getRationalGcd.c */

#include "../include/rational.h"

int getRationalGcd(rational rationalInput)
{
    if (isDenominatorValid(rationalInput))
    {
        if (rationalInput.numerator > rationalInput.denominator)
        {
            return rationalInput.numerator - rationalInput.denominator;
        }
        else
        {
            return rationalInput.denominator - rationalInput.numerator;
        }
    }
}