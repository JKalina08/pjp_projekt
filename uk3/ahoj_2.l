%{
#include <stdio.h>
FILE *fp;
%}

WS [ \t\n]

%%

Ahoj { printf("'Ahoj' bylo zapsano so 'filtr.txt'\n"); fprintf(fp, "Ahoj\n"); }
. ;
{WS} ;
%%

int main() {
    fp = fopen("filtr.txt", "w");
    yyin = stdin;
    yyout = stdout;
    yylex();
    fclose(fp);
    return 0;
}
