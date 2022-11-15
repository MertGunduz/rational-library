/* increaseRational.c */

#include "../include/rational.h"

void increaseRational(rational *rationalInput)
{
    if (isDenominatorValid(*rationalInput))
    {
        (*rationalInput).numerator++;
    }
}