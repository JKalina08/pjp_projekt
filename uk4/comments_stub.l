/* define states */
%s COMMENT

%%

 /* define state transitions and transition actions */
<INITIAL>"/*"		BEGIN COMMENT; 
<INITIAL>.ECHO;
doplnte



%%

int main()
{
	yylex();
	return 0;
}
