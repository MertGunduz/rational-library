/* isNumeratorsEqualEx.c */

#include <stdio.h>
#include "../src/rational.h"

int main(void)
{
    /* defining two rationals */
    rational exampleRational1 = {6, 3};
    rational exampleRational2 = {6, 3};
    
    bool isNumersEqual = isNumeratorsEqual(exampleRational1, exampleRational2);

    if (isNumersEqual)
    {
        fprintf(stdout, "[%d] --> Numerators are equal!\n", isNumersEqual);
    }
    else
    {
        fprintf(stdout, "[%d] --> Numerators are not equal!\n", isNumersEqual);
    }
    return 0;
}