/* isRationalsEqual.c */

#include "../include/rational.h"

bool isRationalsEqual(rational rationalInput1, rational rationalInput2)
{
    if (isDenominatorValid(rationalInput1) && isDenominatorValid(rationalInput2))
    {
        if ((double)rationalInput1.numerator / (double)rationalInput1.denominator == (double)rationalInput2.numerator / (double)rationalInput2.denominator)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}