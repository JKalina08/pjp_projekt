CC = gcc
#CFLAGS =-g -Wall
FLEX = flex

all: p1 p2


p1: parser1.yy.c
	$(CC) $(CFLAGS) -o parser1 parser1.yy.c -lfl

parser1.yy.c:
	$(FLEX) -o parser1.yy.c parser1.l	


p2: parser2.yy.c
	$(CC) $(CFLAGS) -o parser2 parser2.yy.c -lfl

parser2.yy.c:
	$(FLEX) -o parser2.yy.c parser2.l	

clean:
	rm -f parser1 parser1.yy.c
	rm -f parser2 parser2.yy.c
