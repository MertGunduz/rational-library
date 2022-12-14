/* divideRationals.c */

#include "rational.h"

rational divideRationals(rational rationalInput1, rational rationalInput2)
{
    if (isDenominatorValid(rationalInput1) && isDenominatorValid(rationalInput2))
    {
        rational newRational = {rationalInput1.numerator * rationalInput2.denominator, rationalInput1.denominator * rationalInput2.numerator};
        return newRational;
    }
}