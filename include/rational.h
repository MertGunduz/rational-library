/* rational.h */

#include <stdbool.h>
#include <stdlib.h>

typedef struct rational
{
    int numerator;
    int denominator;
} rational;

/* void type functions */
extern void increaseRational(rational *rationalInput);
extern void decreaseRational(rational *rationalInput);

/* bool type functions */
extern bool isDenominatorsEqual(rational rationalInput1, rational rationalInput2);
extern bool isNumeratorsEqual(rational rationalInput1, rational rationalInput2);
extern bool isDenominatorValid(rational rationalInput);
extern bool isRationalsEqual(rational rationalInput1, rational rationalInput2);

/* int type functions */
extern int getRationalGcd(rational rationalInput);

/* rational type functions */
extern rational multiplyRationals(rational rationalInput1, rational rationalInput2);
extern rational divideRationals(rational rationalInput1, rational rationalInput2);