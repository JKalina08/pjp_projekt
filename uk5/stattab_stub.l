%{
#include <stdio.h>
int lineno=1;
%}

%%
main	printf("tok_main\t\t%d\n", lineno);
int     printf("tok_int\t\t%d\n", lineno);

Podobnym zpusobem doplnte pravidla a akce
pro ostatni tokeny. Nezapomente prubezne 
inkrementovat radek lineno.

void
return
{
}

... (atd.)


[ \t]+			;
.		{
		printf("Unrecognized\t%s\t%d\n", yytext, lineno);
		yyterminate();
		}
%%

int main(void) 
{
 	printf("TOKEN\t\tATTRI\tLINENO\n");
	yylex();
	printf("%%d lines tokenized without problems. End of input reached.\n");
	return 0;
}