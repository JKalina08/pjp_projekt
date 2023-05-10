CC = gcc
#CFLAGS = -Wall
FLEX = flex

all: parser1 parser2

parser1: parser1.yy.c
	$(CC) $(CFLAGS) -o parser1 parser1.yy.c -lfl

parser1.yy.c:
	$(FLEX) -o parser1.yy.c parser1.l	

parser2: parser2.c
	$(CC) $(CFLAGS) -o parser2 parser2.c -lfl

parser2.yy.c:
	$(FLEX) -o parser2.yy.c parser2.l

clean:
	rm -f parser1 parser1.yy.c
	rm -f parser2 