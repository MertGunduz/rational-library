/* rational.h */

typedef struct rational
{
    int numerator;
    int denominator;
} rational;

extern void increaseRational(rational *rationalInput);
extern void decreaseRational(rational *rationalInput);