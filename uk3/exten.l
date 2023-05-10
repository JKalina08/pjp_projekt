%{
#include <stdio.h>
%}

PIC     \.(jpg|tiff|png|fig)$
ARCH    \.(rar|gz|tar|tgz)$
TXT     \.(txt|html)$
CAPITAL [A-Z]    /*Velká písmena*/
DIGIT   [0-9]    /*Číslice*/
EMPTY_LINE ^.*$  /*Prázdný řádek*/

%%

 /* add code and change pattern */
	
{PIC} printf("%s is a picture file\n", yytext);
{ARCH} printf("%s is an archive file\n", yytext);
{TXT} printf("%s is a text-like file\n", yytext);
\n  ;
^[^.]*$ { printf("%s isn't a file with ending\n", yytext); }
.$  { printf("%s don't recognize this file type\n", yytext); }


%%

 /* add code 
*/
