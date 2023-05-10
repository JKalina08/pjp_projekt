%{
#include <stdio.h>
%}

%%

 /* add code and change pattern */
	
(ab|ba)[c-z0-9]*(ab|ba) { printf("%s is according the grammar\n", yytext); }
^[^ab].+$ { printf("%s is NOT according the grammar\n", yytext); }

%%

 /* add code 
*/
