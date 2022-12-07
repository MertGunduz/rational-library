/* isNumeratorsEqual.c */

#include "rational.h"

bool isNumeratorsEqual(rational rationalInput1, rational rationalInput2)
{
    if (isDenominatorValid(rationalInput1) && isDenominatorValid(rationalInput2))
    {
        if (rationalInput1.numerator == rationalInput2.numerator)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}