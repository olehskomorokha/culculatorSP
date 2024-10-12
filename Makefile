CC = g++
CFLAGS = -Wall -c
AR = ar
ARFLAGS = rcs
LIBNAME = libcalculator.a

all: main

$(LIBNAME): calculator.o
	$(AR) $(ARFLAGS) $(LIBNAME) calculator.o

main: main.o $(LIBNAME)
	$(CC) main.o -o main $(LIBNAME)

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) calculator.cpp

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) main.cpp

clean:
	rm -f *.o main $(LIBNAME)