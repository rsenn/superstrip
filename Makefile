.PHONY: all clean

all: superstrip

.c.o:
	gcc -c $< -I /usr/include/skalibs/ 

superstrip: superstrip.o seek_set.o 
	gcc -o superstrip $^ -I /usr/include/skalibs/ -l skarnet -L /usr/lib64/skalibs

clean:
	rm superstrip
