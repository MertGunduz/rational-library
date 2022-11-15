EXMP:= examples/
SRC:= src/
BLD:= build/

all: ${BLD}increaseRational.o ${BLD}decreaseRational.o ${BLD}isDenominatorsEqual.o ${EXMP}decreaseRationalsEx.out ${EXMP}increaseRationalsEx.out ${EXMP}isDenominatorsEqualEx.out

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

# =================
#   EXAMPLE FILES 
# ================= 

# decreaseRationalsEx.out - example source #
${EXMP}decreaseRationalsEx.out: ${EXMP}decreaseRationalsEx.c
	gcc ${EXMP}decreaseRationalsEx.c ${BLD}decreaseRational.o -o decreaseRationalsEx.out
	mv decreaseRationalsEx.out examples/

# increaseRationalsEx.out - example source #
${EXMP}increaseRationalsEx.out: ${EXMP}increaseRationalsEx.c
	gcc ${EXMP}increaseRationalsEx.c ${BLD}increaseRational.o -o increaseRationalsEx.out
	mv increaseRationalsEx.out examples/

# isDenominatorsEqualEx.out - example source #
${EXMP}isDenominatorsEqualEx.out: ${EXMP}isDenominatorsEqualEx.c
	gcc ${EXMP}isDenominatorsEqualEx.c ${BLD}isDenominatorsEqual.o -o isDenominatorsEqualEx.out
	mv isDenominatorsEqualEx.out examples/

# clean - deletes all the library object files and example executables #
clean:
	rm -f $(wildcard ${EXMP}*.out)
	rm -f $(wildcard ${BLD}*.o)