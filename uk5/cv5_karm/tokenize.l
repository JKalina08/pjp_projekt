%{
#include <stdio.h>
int lineno=1;
%}

%%
"int"					{ printf("tok_int\t\t\t\t%d\n",yylineno); }
"main"					{ printf("tok_main\t\t\t%d\n",yylineno); }
"void"					{ printf("tok_void\t\t\t%d\n",yylineno); }
"return"				{ printf("tok_return\t\t\t%d\n",yylineno); }
"{"						{ printf("tok_lbrace\t\t\t%d\n",yylineno); }
"}"						{ printf("tok_rbrace\t\t\t%d\n",yylineno); }
"("						{ printf("tok_lparen\t\t\t%d\n",yylineno); }
")"						{ printf("tok_rparen\t\t\t%d\n",yylineno); }
";"						{ printf("tok_semicolon\t\t\t%d\n",yylineno); }
"="						{ printf("tok_equal\t\t\t%d\n",yylineno); }
"+"						{ printf("tok_plus\t\t\t\t%d",yylineno); }
"*"						{ printf("tok_mult\t\t\t%d\n",yylineno); }
[a-zA-Z][a-zA-Z0-9]*	{ printf("tok_id\t\t\t%s\t%d\n",yytext,yylineno); }
[0-9]+					{ printf("tok_intconts\t\t%s\t%d\n",yytext,yylineno); }
[ \t]+					;
[\n]						{ lineno++; }
.						{ printf("Unrecognized\t\t\t%s\t%d\n", yytext, yylineno); /* yyterminate();*/ }
%%

int main(void) 
{
 	printf("TOKEN\t\t\tATTRI\tLINENO\n");
	yylex();
	printf("%d lines tokenized without problems. End of input reached.\n", lineno);
	return 0;
}