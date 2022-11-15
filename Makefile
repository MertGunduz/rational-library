EXMP:= examples/
SRC:= src/
BLD:= build/

all: ${BLD}increaseRational.o ${BLD}decreaseRational.o ${EXMP}decreaseRationalsEx.out ${EXMP}increaseRationalsEx.out

# SOURCE COMPILING (OBJECT CODES)
${BLD}increaseRational.o: ${SRC}increaseRational.c
	gcc -c ${SRC}increaseRational.c
	mv increaseRational.o build/

${BLD}decreaseRational.o: ${SRC}decreaseRational.c
	gcc -c ${SRC}decreaseRational.c
	mv decreaseRational.o build/

${EXMP}decreaseRationalsEx.out: ${EXMP}decreaseRationalsEx.c
	gcc ${EXMP}decreaseRationalsEx.c ${BLD}decreaseRational.o -o decreaseRationalsEx.out
	mv decreaseRationalsEx.out examples/

${EXMP}increaseRationalsEx.out: ${EXMP}increaseRationalsEx.c
	gcc ${EXMP}increaseRationalsEx.c ${BLD}increaseRational.o -o increaseRationalsEx.out
	mv increaseRationalsEx.out examples/

clean:
	rm -f $(wildcard ${EXMP}*.out)
	rm -f $(wildcard ${BLD}*.o)