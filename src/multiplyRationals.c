/* multiplyRationals.c */

#include "../include/rational.h"

rational multiplyRationals(rational rationalInput1, rational rationalInput2)
{
    if (isDenominatorValid(rationalInput1) && isDenominatorValid(rationalInput2))
    {
        rational newRational = {rationalInput1.numerator * rationalInput2.numerator, rationalInput1.denominator * rationalInput2.denominator};
        return newRational;
    }
}