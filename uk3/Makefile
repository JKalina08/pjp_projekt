CC = gcc
#CFLAGS =-g -Wall
FLEX = flex

all: ahoj_1 ahoj_2 abba abc exten


ahoj_1: ahoj_1.yy.c
	$(CC) $(CFLAGS) -o ahoj_1 ahoj_1.yy.c -lfl

ahoj_1.yy.c:
	$(FLEX) -o ahoj_1.yy.c ahoj_1.l	

ahoj_2: ahoj_2.yy.c
	$(CC) $(CFLAGS) -o ahoj_2 ahoj_2.yy.c -lfl

ahoj_2.yy.c:
	$(FLEX) -o ahoj_2.yy.c ahoj_2.l

abc: abc.yy.c
	$(CC) $(CFLAGS) -o abc abc.yy.c -lfl

abc.yy.c:
	$(FLEX) -o abc.yy.c abc.l

abba: abba.yy.c
	$(CC) $(CFLAGS) -o abba abba.yy.c -lfl

abba.yy.c:
	$(FLEX) -o abba.yy.c abba.l

exten: exten.yy.c
	$(CC) $(CFLAGS) -o exten exten.yy.c -lfl

exten.yy.c:
	$(FLEX) -o exten.yy.c exten.l


clean:
	rm -f ahoj_1 ahoj_1.yy.c
	rm -f ahoj_2 ahoj_2.yy.c
	rm -f abc abc.yy.c
	rm -f abba abba.yy.c
	rm -f exten exten.yy.c
