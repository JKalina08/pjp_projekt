CC = gcc
#CFLAGS = -Wall
FLEX = flex

all: tokenize stattab

tokenize: tokenize.yy.c
	$(CC) $(CFLAGS) -o tokenize tokenize.yy.c -lfl

tokenize.yy.c:
	$(FLEX) -o tokenize.yy.c tokenize.l	

stattab: stattab.yy.c
	$(CC) $(CFLAGS) -o stattab stattab.yy.c -lfl

stattab.yy.c:
	$(FLEX) -o stattab.yy.c stattab.l

clean:
	rm -f tokenize tokenize.yy.c
	rm -f stattab stattab.yy.c