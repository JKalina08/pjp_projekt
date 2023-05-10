/* define states */
%x COMMENT_SINGLE
%x COMMENT_MULTI

%%

 /* define state transitions and transition actions */
<INITIAL>"/*"	{ BEGIN COMMENT_MULTI; } /* začátek víceřádkového komentáře */
<INITIAL>"//"	{ BEGIN COMMENT_SINGLE; }
<INITIAL>"*/"	{ yyterminate(); } /* ukončovací sekvence bez začátku komentáře */
<INITIAL>.		ECHO;

<COMMENT_MULTI>"*/"	{ BEGIN INITIAL; } /* konec víceřádkového komentáře */
<COMMENT_MULTI>"/*"	{ yyterminate(); } /* chyba při vnořeném komentáři */
<COMMENT_MULTI>.	;

<COMMENT_SINGLE>"\n"	{ BEGIN INITIAL; }
<COMMENT_SINGLE>.		;
%%

int main()
{
	yylex();
	return 0;
}
