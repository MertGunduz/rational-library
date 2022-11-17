EXMP:= examples/
SRC:= src/
BLD:= build/

all: ${BLD}increaseRational.o ${BLD}decreaseRational.o ${BLD}isDenominatorsEqual.o ${BLD}isNumeratorsEqual.o ${BLD}isDenominatorValid.o ${BLD}getRationalGcd.o  ${BLD}isRationalsEqual.o ${BLD}multiplyRationals.o ${BLD}divideRationals.o ${BLD}sumRationals.o ${BLD}subtractRationals.o ${EXMP}decreaseRationalsEx.out ${EXMP}increaseRationalsEx.out ${EXMP}isDenominatorsEqualEx.out ${EXMP}isNumeratorsEqualEx.out ${EXMP}getRationalGcdEx.out ${EXMP}isRationalsEqualEx.out ${EXMP}multiplyRationalsEx.out ${EXMP}divideRationalsEx.out ${EXMP}sumRationalsEx.out ${EXMP}subtractRationalsEx.out

# =================
#   LIBRARY FILES
# =================

# increaseRational.o - library source (LS) #
LS1 = increaseRational
${BLD}${LS1}.o: ${SRC}${LS1}.c
	gcc -c ${SRC}${LS1}.c
	mv ${LS1}.o build/

# decreaseRational.o - library source (LS) #
LS2 = decreaseRational
${BLD}${LS2}.o: ${SRC}${LS2}.c
	gcc -c ${SRC}${LS2}.c
	mv ${LS2}.o build/

# isDenominatorsEqual.o - library source (LS) #
LS3 = isDenominatorsEqual
${BLD}${LS3}.o: ${SRC}${LS3}.c
	gcc -c ${SRC}${LS3}.c
	mv ${LS3}.o build/	

# isNumeratorsEqual.o - library source (LS) #
LS4 = isNumeratorsEqual
${BLD}${LS4}.o: ${SRC}${LS4}.c
	gcc -c ${SRC}${LS4}.c
	mv ${LS4}.o build/	

# isdenominatorValid.o - library source (LS) #
LS5 = isDenominatorValid
${BLD}${LS5}.o: ${SRC}${LS5}.c
	gcc -c ${SRC}${LS5}.c
	mv ${LS5}.o build/	
	
# getRationalGcd.o - library source (LS) #
LS6 = getRationalGcd
${BLD}${LS6}.o: ${SRC}${LS6}.c
	gcc -c ${SRC}${LS6}.c
	mv ${LS6}.o build/	

# isRationalsEqual.o - library source (LS) #
LS7 = isRationalsEqual
${BLD}${LS7}.o: ${SRC}${LS7}.c
	gcc -c ${SRC}${LS7}.c
	mv ${LS7}.o build/	

# multiplyRationals.o - library source (LS) #
LS8 = multiplyRationals
${BLD}${LS8}.o: ${SRC}${LS8}.c
	gcc -c ${SRC}${LS8}.c
	mv ${LS8}.o build/

# divideRationals.o - library source (LS) #
LS9 = divideRationals
${BLD}${LS9}.o: ${SRC}${LS9}.c
	gcc -c ${SRC}${LS9}.c
	mv ${LS9}.o build/

# sumRationals.o - library source (LS) #
LS10 = sumRationals
${BLD}${LS10}.o: ${SRC}${LS10}.c
	gcc -c ${SRC}${LS10}.c
	mv ${LS10}.o build/

# subtractRationals.o - library source (LS) #
LS11 = subtractRationals
${BLD}${LS11}.o: ${SRC}${LS11}.c
	gcc -c ${SRC}${LS11}.c
	mv ${LS11}.o build/
# =================
#   EXAMPLE FILES 
# ================= 

# decreaseRationalsEx.out - example source #
${EXMP}decreaseRationalsEx.out: ${EXMP}decreaseRationalsEx.c
	gcc ${EXMP}decreaseRationalsEx.c ${BLD}${LS2}.o ${BLD}${LS5}.o -o decreaseRationalsEx.out
	mv decreaseRationalsEx.out examples/

# increaseRationalsEx.out - example source #
${EXMP}increaseRationalsEx.out: ${EXMP}increaseRationalsEx.c
	gcc ${EXMP}increaseRationalsEx.c ${BLD}${LS1}.o ${BLD}${LS5}.o -o increaseRationalsEx.out
	mv increaseRationalsEx.out examples/

# isDenominatorsEqualEx.out - example source #
${EXMP}isDenominatorsEqualEx.out: ${EXMP}isDenominatorsEqualEx.c
	gcc ${EXMP}isDenominatorsEqualEx.c ${BLD}${LS3}.o ${BLD}${LS5}.o -o isDenominatorsEqualEx.out
	mv isDenominatorsEqualEx.out examples/

# isNumeratorsEqualEx.out - example source #
${EXMP}isNumeratorsEqualEx.out: ${EXMP}isNumeratorsEqualEx.c
	gcc ${EXMP}isNumeratorsEqualEx.c ${BLD}${LS4}.o ${BLD}${LS5}.o -o isNumeratorsEqualEx.out
	mv isNumeratorsEqualEx.out examples/

# getRationalGcdEx.out - example source #
${EXMP}getRationalGcdEx.out: ${EXMP}getRationalGcdEx.c
	gcc ${EXMP}getRationalGcdEx.c ${BLD}${LS6}.o ${BLD}${LS5}.o -o getRationalGcdEx.out
	mv getRationalGcdEx.out examples/

# isRationalsEqualEx.out - example source #
${EXMP}isRationalsEqualEx.out: ${EXMP}isRationalsEqualEx.c
	gcc ${EXMP}isRationalsEqualEx.c ${BLD}${LS7}.o ${BLD}${LS6}.o  ${BLD}${LS5}.o -o isRationalsEqualEx.out
	mv isRationalsEqualEx.out examples/

# multiplyRationalsEx.out - example source #
${EXMP}multiplyRationalsEx.out: ${EXMP}multiplyRationalsEx.c
	gcc ${EXMP}multiplyRationalsEx.c ${BLD}${LS8}.o  ${BLD}${LS5}.o -o multiplyRationalsEx.out
	mv multiplyRationalsEx.out examples/

# divideRationalsEx.out - example source #
${EXMP}divideRationalsEx.out: ${EXMP}divideRationalsEx.c
	gcc ${EXMP}divideRationalsEx.c ${BLD}${LS9}.o  ${BLD}${LS5}.o -o divideRationalsEx.out
	mv divideRationalsEx.out examples/

# sumRationalsEx.out - example source #
${EXMP}sumRationalsEx.out: ${EXMP}sumRationalsEx.c
	gcc ${EXMP}sumRationalsEx.c ${BLD}${LS10}.o  ${BLD}${LS5}.o -o sumRationalsEx.out
	mv sumRationalsEx.out examples/

# sumRationalsEx.out - example source #
${EXMP}subtractRationalsEx.out: ${EXMP}subtractRationalsEx.c
	gcc ${EXMP}subtractRationalsEx.c ${BLD}${LS11}.o  ${BLD}${LS5}.o -o subtractRationalsEx.out
	mv subtractRationalsEx.out examples/

# clean - deletes all the library object files and example executables #
clean:
	rm -f $(wildcard ${EXMP}*.out)
	rm -f $(wildcard ${BLD}*.o)