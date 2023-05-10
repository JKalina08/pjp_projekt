%{
/* #include prislusny sdileny soubor */
  
%}

%%
/* priklad specifikace pro parser3 */
"a"		return(a_TOK);

...

.		return(yytext[0]);
 \n		return 0;  /* EOF */


/* priklad specifikace pro parser4 */
[a-h]	return ??;
\n		return 0;  /* EOF */
%%