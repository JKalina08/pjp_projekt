%{
#include <stdio.h>
%}

%%

 /* add code and change pattern */
abba	{ printf("%s is according the grammar\n", yytext); }

%%

 /* add code */
