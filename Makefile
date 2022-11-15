EXMP:= examples/
SRC:= src/
BLD:= build/

all: ${SRC}increaseRational.o ${SRC}decreaseRational.o ${EXMP}decreaseRationalsEx.out ${EXMP}increaseRationalsEx.out

# SOURCE COMPILING (OBJECT CODES)
${SRC}increaseRational.o: ${SRC}increaseRational.c
	gcc -c ${SRC}increaseRational.c
	mv increaseRational.o src/

${SRC}decreaseRational.o: ${SRC}decreaseRational.c
	gcc -c ${SRC}decreaseRational.c
	mv decreaseRational.o src/

${EXMP}decreaseRationalsEx.out: ${EXMP}decreaseRationalsEx.c
	gcc ${EXMP}decreaseRationalsEx.c ${SRC}decreaseRational.o -o decreaseRationalsEx.out
	mv decreaseRationalsEx.out examples/

${EXMP}increaseRationalsEx.out: ${EXMP}increaseRationalsEx.c
	gcc ${EXMP}increaseRationalsEx.c ${SRC}increaseRational.o -o increaseRationalsEx.out
	mv increaseRationalsEx.out examples/