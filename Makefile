all: hello

hello: hello.o
	sleep 15
	gcc -Wall -std=c99 -o hello hello.o
	

hello.o: hello.c
	gcc -Wall -std=c99 -c hello.c

.PHONY: clean

clean:
	rm -f hello hello.o
