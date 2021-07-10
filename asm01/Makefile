# Makefile
all: 001

001: 001.o
	gcc -o $@ $+

001.o: 001.s
	as -o $@ $<

clean:
	rm -vf 001 *.o
