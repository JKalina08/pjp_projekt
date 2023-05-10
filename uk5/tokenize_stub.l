%%{
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

Sem prijde jednoducha regularni specifikace
textovych literalu a odpovidajici pravidla pro
kontrolu zaplneni tabulky, zapis do ni
a ignorovani jakychkoli dalsich znaku.

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
