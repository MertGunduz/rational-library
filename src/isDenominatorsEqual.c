/* isDenominatorsEqual.c */

#include "../include/rational.h"

bool isDenominatorsEqual(rational ratioanlInput1, rational ratioanlInput2)
{
    if (ratioanlInput1.denominator == ratioanlInput2.denominator)
    {
        return true;
    }
    else
    {
        return false;
    }
}