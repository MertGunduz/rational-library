rational.h - C library for fractional numbers\
GNU General Public License v3.0

### NAME 

rational.h

<br>

### SYNOPSIS {#synopsis .mb10}

\#include \"rational.h\"

<br>

### DESCRIPTION

\"rational.h\" is a C library that provides developers some functions
and structs to simplify rational number definitions and declarations by
using an automatic denumerator validation function. It contains
fractional operation functions for rational expressions.

<br>

### LIBRARY USAGE 

Scientific programming, mathematical analysis, computing, algorithms.

<br>

### STRUCTURES

[1-expression): typedef struct rational {int numerator; int
denominator;}
rational;](https://github.com/MertGunduz/rational-library/blob/main/examples/declaringRationalsEx.c)

*1-description): The main struct for declaring rational expressions.*

<br>

<div>

### FUNCTIONS

[1-expression): extern void increaseRational(rational *rationalInput);](https://github.com/MertGunduz/rational-library/blob/main/examples/increaseRationalsEx.c)

*1-description): Increases the numerator of a rational number by **1**.*

<br>

[2-expression): extern void decreaseRational(rational *rationalInput);](https://github.com/MertGunduz/rational-library/blob/main/examples/decreaseRationalsEx.c)

*2-description): Decreases the numerator of a rational number by **1**.*

<br>

[3-expression): extern bool isDenominatorsEqual(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/isDenominatorsEqualEx.c)

*3-description): Checks the denominators and returns **true** if they are equal, returns **false** if they are not equal.*

<br>

[4-expression): extern bool isNumeratorsEqual(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/isNumeratorsEqualEx.c)

*4-description): Checks the numerators and returns **true** if they are equal, returns **false** if they are not equal.*

<br>

[5-expression): extern bool isRationalsEqual(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/isRationalsEqualEx.c)

*5-description): Checks the rational expressions and returns **true** if they are equal, returns **false** if they are not equal.*

<br>

[6-expression): extern int getRationalGcd(rational rationalInput);](https://github.com/MertGunduz/rational-library/blob/main/examples/getRationalGcdEx.c)

*6-description): Finds the great common divisor of a rational number and
returns the **gcd value**.*

<br>

[7-expression): extern rational multiplyRationals(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/multiplyRationalsEx.c)

*7-description): Multiplies two rational numbers and returns the
multiplied **rational number value**.*

<br>

[8-expression): extern rational divideRationals(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/divideRationalsEx.c)

*8-description): Divides two rational numbers and returns the divided
**rational number value**.*

<br>

[9-expression): extern rational sumRationals(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/sumRationalsEx.c)

*9-description): Adds two rational numbers and returns the added
**rational number value**.*

<br>

[10-expression): extern rational subtractRationals(rational rationalInput1, rational rationalInput2);](https://github.com/MertGunduz/rational-library/blob/main/examples/subtractRationalsEx.c)

*10-description): Subtracts two rational numbers and returns the
subtracted **rational number value**.*
</div>
