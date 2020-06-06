.PHONY: all clean install

all: superstrip


CFLAGS = -I/usr/local/include/skalibs
LIBS = -l skarnet -L /usr/lib64/skalibs
.c.o:
	$(CC) $(CFLAGS) -c $< 

superstrip: superstrip.o seek_set.o 
	$(CC) -o superstrip $^ $(LIBS)

clean:
	$(RM) superstrip *.o *~

install:
	install -m755 superstrip /usr/local/bin
