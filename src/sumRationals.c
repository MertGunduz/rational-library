/* sumRationals.c */

#include "rational.h"

rational sumRationals(rational rationalInput1, rational rationalInput2)
{
    if (isDenominatorValid(rationalInput1) && isDenominatorValid(rationalInput2))
    {
        if (rationalInput1.denominator == rationalInput2.denominator)
        {
            rational newRational = {rationalInput1.numerator + rationalInput2.numerator, rationalInput1.denominator};
            return newRational;
        }
    }
}