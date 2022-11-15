/* isDenominatorValid.c */

#include "../include/rational.h"

bool isDenominatorValid(rational rationalInput)
{
    if (rationalInput.denominator == 0)
    {
        exit(0);
    }
    else
    {
        return true;
    }
}