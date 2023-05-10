%{
#include <stdio.h>
%}

%%

 /* ignore white space */

 /* string yytext contains text that matched RE */
 /* RE and action are separated by whitespace */
 
[^ \t\n]+	{ printf("%s: don't recognize this file\n", yytext); }

%%
