%{
/**************************************************
 * String literal parser with a simple symbol table
 **************************************************/
#define STR_LENGTH 200
#define STR_AMOUNT 50
#include <string.h>
#include <stdlib.h>

char strings[STR_AMOUNT][STR_LENGTH];
int first_free = 0;
%}

%%
\".*\"	{ if(first_free<STR_AMOUNT){snprintf(strings[first_free],STR_LENGTH,yytext,yylineno); first_free++; }else{printf("ERROR: table overflow"); exit(1);}}
.		;
%%

int main()
{
	int i;
	yylex();
	printf("\n ** Content of the symbol table **\n");
	for(i=0; i<first_free; i++)
		printf("%s\n", strings[i]);
	return 0;
}

int yywrap(void)
{
        return 1;
}
