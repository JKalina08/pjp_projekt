%{
#include <stdio.h>
%}

WS  [ \t\n]

%%

 /* add code and change pattern */
ahoj	{ printf("Ahoj\n"); }
.       ;
{WS}    ;
%%

 /* add code */

