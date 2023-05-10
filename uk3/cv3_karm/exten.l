%{
#include <stdio.h>
%}

%%

 /* add code and change pattern */
	
\.(jpg|tiff|png|fig)$   { printf("%s is a picture file\n", yytext); }
\.(rar|gz|tar|tgz)$ { printf("%s is an archive file\n", yytext); }
\.(txt|html)$   { printf("%s is a text file\n", yytext); }
\n  ;
^[^.]*$ { printf("%s isn't a file with ending\n", yytext); }
.$  { printf("%s don't recognize this file type\n", yytext); }

%%
