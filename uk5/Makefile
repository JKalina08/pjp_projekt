CC = gcc
#CFLAGS =-g -Wall
FLEX = flex

all: to st dy


to: tokenize.yy.c
	$(CC) $(CFLAGS) -o tokenize tokenize.yy.c -lfl

tokenize.yy.c:
	$(FLEX) -o tokenize.yy.c tokenize.l	

st: stattab.yy.c
	$(CC) $(CFLAGS) -o stattab stattab.yy.c -lfl

stattab.yy.c:
	$(FLEX) -o stattab.yy.c stattab.l

dy: dyntab.yy.c
	$(CC) $(CFLAGS) -o dyntab dyntab.yy.c -lfl

dyntab.yy.c:
	$(FLEX) -o dyntab.yy.c dyntab.l

clean:
	rm -f tokenize tokenize.yy.c
	rm -f stattab stattab.yy.c
	rm -f dyntab dyntab.yy.c
