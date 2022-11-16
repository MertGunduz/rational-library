/* isDenominatorsEqual.c */

#include "../include/rational.h"

bool isDenominatorsEqual(rational rationalInput1, rational rationalInput2)
{
    if (isDenominatorValid(rationalInput1) && isDenominatorValid(rationalInput2))
    {
        if (rationalInput1.denominator == rationalInput2.denominator)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}