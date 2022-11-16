/* isRationalsEqualEx.c */

#include <stdio.h>
#include "../include/rational.h"

int main(void)
{
    /* defining two rationals */
    rational exampleRational1 = {6, 8};
    rational exampleRational2 = {12, 16};
    
    bool isRatsEqual = isRationalsEqual(exampleRational1, exampleRational2);

    if (isRatsEqual)
    {
        fprintf(stdout, "[%d] --> Rational numbers are equal!\n", isRatsEqual);
    }
    else
    {
        fprintf(stdout, "[%d] --> Rational numbers are not equal!\n", isRatsEqual);
    }
    return 0;
}