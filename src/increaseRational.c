/* increaseRational.c */

#include "rational.h"

void increaseRational(rational *rationalInput)
{
    if (isDenominatorValid(*rationalInput))
    {
        (*rationalInput).numerator++;
    }
}