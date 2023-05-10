%{
   void yyerror(char *);
   int yylex(void);
   #define YYDEBUG 1 /* redundant, typically included in makefile */
   #include <stdio.h>
%}


%%

  /* define grammar rules here */

%%

void yyerror (char *s)
{
  /* fprintf (stderr, "%s\n", s); */
  printf("Incorrect derivation!\n");
}

int main(void)
{
#if YYDEBUG
  yydebug = 1;
#endif
	if(!yyparse())
		printf("End of input reached\n");
	return 0;
}

