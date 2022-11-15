/* rational.h */

#include <stdbool.h>

typedef struct rational
{
    int numerator;
    int denominator;
} rational;

/* void type functions */
extern void increaseRational(rational *rationalInput);
extern void decreaseRational(rational *rationalInput);

/* bool type functions */
extern bool isDenominatorsEqual(rational ratioanlInput1, rational ratioanlInput2);