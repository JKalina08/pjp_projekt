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
 /* int snprintf(char *str, size_t size, const char *format, ...); */
 /* \".*\"  { printf("String: %s\n", yytext); } */

\".*\"  { if (first_free < STR_AMOUNT ) {
            snprintf(strings[first_free],
                    STR_LENGTH,
                    "%s",
                    yytext);
            first_free++;
            } else {
                printf("error: You are out of table size.\n");
                exit(1);
            }
}
\n      ;
.       ;
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
