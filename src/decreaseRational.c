/* decreaseRational.c */

#include "rational.h"

void decreaseRational(rational *rationalInput)
{
    if (isDenominatorValid(*rationalInput))
    {
        (*rationalInput).numerator--;
    }
}