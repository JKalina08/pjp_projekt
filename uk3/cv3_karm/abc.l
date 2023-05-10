%{
#include <stdio.h>
%}

WS  [ \t]

%%

 /* add code and change pattern */
main	{ printf("MAIN"); }
printf	{ printf("PRINTF"); }
\"[^\"\n]*\"   { printf("STRING"); }
{WS}    ;
.       ECHO;

%%

 /* add code */

