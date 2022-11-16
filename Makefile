EXMP:= examples/
SRC:= src/
BLD:= build/

all: ${BLD}increaseRational.o ${BLD}decreaseRational.o ${BLD}isDenominatorsEqual.o ${BLD}isNumeratorsEqual.o ${BLD}isDenominatorValid.o ${BLD}getRationalGcd.o ${EXMP}decreaseRationalsEx.out ${EXMP}increaseRationalsEx.out ${EXMP}isDenominatorsEqualEx.out ${EXMP}isNumeratorsEqualEx.out ${EXMP}getRationalGcdEx.out

# =================
#   LIBRARY FILES
# ================= 

# increaseRational.o - library source #
${BLD}increaseRational.o: ${SRC}increaseRational.c
	gcc -c ${SRC}increaseRational.c
	mv increaseRational.o build/

# decreaseRational.o - library source #
${BLD}decreaseRational.o: ${SRC}decreaseRational.c
	gcc -c ${SRC}decreaseRational.c
	mv decreaseRational.o build/

# isDenominatorsEqual.o - library source #
${BLD}isDenominatorsEqual.o: ${SRC}isDenominatorsEqual.c
	gcc -c ${SRC}isDenominatorsEqual.c
	mv isDenominatorsEqual.o build/	

# isNumeratorsEqual.o - library source #
${BLD}isNumeratorsEqual.o: ${SRC}isNumeratorsEqual.c
	gcc -c ${SRC}isNumeratorsEqual.c
	mv isNumeratorsEqual.o build/	

# isdenominatorValid.o - library source #
${BLD}isDenominatorValid.o: ${SRC}isDenominatorValid.c
	gcc -c ${SRC}isDenominatorValid.c
	mv isDenominatorValid.o build/	
	
# getRationalGcd.o - library source #
${BLD}getRationalGcd.o: ${SRC}getRationalGcd.c
	gcc -c ${SRC}getRationalGcd.c
	mv getRationalGcd.o build/	

# =================
#   EXAMPLE FILES 
# ================= 

# decreaseRationalsEx.out - example source #
${EXMP}decreaseRationalsEx.out: ${EXMP}decreaseRationalsEx.c
	gcc ${EXMP}decreaseRationalsEx.c ${BLD}decreaseRational.o ${BLD}isDenominatorValid.o -o decreaseRationalsEx.out
	mv decreaseRationalsEx.out examples/

# increaseRationalsEx.out - example source #
${EXMP}increaseRationalsEx.out: ${EXMP}increaseRationalsEx.c
	gcc ${EXMP}increaseRationalsEx.c ${BLD}increaseRational.o ${BLD}isDenominatorValid.o -o increaseRationalsEx.out
	mv increaseRationalsEx.out examples/

# isDenominatorsEqualEx.out - example source #
${EXMP}isDenominatorsEqualEx.out: ${EXMP}isDenominatorsEqualEx.c
	gcc ${EXMP}isDenominatorsEqualEx.c ${BLD}isDenominatorsEqual.o ${BLD}isDenominatorValid.o -o isDenominatorsEqualEx.out
	mv isDenominatorsEqualEx.out examples/

# isNumeratorsEqualEx.out - example source #
${EXMP}isNumeratorsEqualEx.out: ${EXMP}isNumeratorsEqualEx.c
	gcc ${EXMP}isNumeratorsEqualEx.c ${BLD}isNumeratorsEqual.o ${BLD}isDenominatorValid.o -o isNumeratorsEqualEx.out
	mv isNumeratorsEqualEx.out examples/

# getRationalGcdEx.out - example source #
${EXMP}getRationalGcdEx.out: ${EXMP}getRationalGcdEx.c
	gcc ${EXMP}getRationalGcdEx.c ${BLD}getRationalGcd.o ${BLD}isDenominatorValid.o -o getRationalGcdEx.out
	mv getRationalGcdEx.out examples/

# clean - deletes all the library object files and example executables #
clean:
	rm -f $(wildcard ${EXMP}*.out)
	rm -f $(wildcard ${BLD}*.o)