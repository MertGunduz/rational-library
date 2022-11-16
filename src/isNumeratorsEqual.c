/* isNumeratorsEqual.c */

#include "../include/rational.h"

bool isNumeratorsEqual(rational ratioanlInput1, rational ratioanlInput2)
{
    if (isDenominatorValid(ratioanlInput1) && isDenominatorValid(ratioanlInput2))
    {
        if (ratioanlInput1.numerator == ratioanlInput2.numerator)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}