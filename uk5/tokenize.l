%{
#include <stdio.h>
int lineno=1;
%}

%%
main        printf("| %-16s | %5s | %6d |\n", "tok_main", "", lineno);
int         printf("| %-16s | %5s | %6d |\n", "tok_int", "", lineno);
void        printf("| %-16s | %5s | %6d |\n", "tok_void", "", lineno);
return      printf("| %-16s | %5s | %6d |\n", "tok_return", "", lineno);
"("         printf("| %-16s | %5s | %6d |\n", "tok_lparen", "", lineno);
")"         printf("| %-16s | %5s | %6d |\n", "tok_rparen", "", lineno);
"{"         printf("| %-16s | %5s | %6d |\n", "tok_lbrace", "", lineno);
"}"         printf("| %-16s | %5s | %6d |\n", "tok_rbrace", "", lineno);
";"         printf("| %-16s | %5s | %6d |\n", "tok_semicolon", "", lineno);
"="         printf("| %-16s | %5s | %6d |\n", "tok_equal", "", lineno);
"+"         printf("| %-16s | %5s | %6d |\n", "tok_plus", "", lineno);
"*"         printf("| %-16s | %5s | %6d |\n", "tok_mult", "", lineno);
[a-zA-Z][a-zA-Z0-9]*         printf("| %-16s | %5s | %6d |\n", "tok_id", yytext, lineno);
[0-9]+      printf("| %-16s | %5s | %6d |\n", "tok_intconst", yytext, lineno);
[ \t\r]+      ;
.	{ printf("| %-16s | %5s | %6d |\n", "! Unrecognized", yytext, lineno);
          /* yyterminate(); */  }
[\n]        ++lineno;
%%

int main(void) 
{
 	printf("| %-16s | %5s | %5s |\n", "TOKEN", "ATTRI", "LINENO");
        printf("|------------------|-------|--------|\n");
	yylex();
	printf("%d lines tokenized without problems. End of input reached.\n", lineno - 1);
	return 0;
}
