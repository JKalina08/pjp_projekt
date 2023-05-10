CC = gcc
#CFLAGS = -Wall
FLEX = flex

all: comments wordcount

comments: comments.yy.c
	$(CC) $(CFLAGS) -o comments comments.yy.c -lfl

comments.yy.c:
	$(FLEX) -o comments.yy.c comments.l	

wordcount: wordcount.yy.c
	$(CC) $(CFLAGS) -o wordcount wordcount.yy.c -lfl

wordcount.yy.c:
	$(FLEX) -o wordcount.yy.c wordcount.l

clean:
	rm -f comments comments.yy.c
	rm -f wordcount wordcount.yy.c