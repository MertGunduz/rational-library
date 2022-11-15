/* isDenonimatorsEqualEx.c */

#include <stdio.h>
#include "../include/rational.h"

int main(void)
{
    rational exampleRational1 = {2, 8};
    rational exampleRational2 = {6, 8};
    
    bool isDenomsEqual = isDenominatorsEqual(exampleRational1, exampleRational2);

    if (isDenomsEqual)
    {
        fprintf(stdout, "[%d] --> Denominators are equal!\n", isDenomsEqual);
    }
    else
    {
        fprintf(stdout, "[%d] --> Denominators are not equal!\n", isDenomsEqual);
    }
    return 0;
}