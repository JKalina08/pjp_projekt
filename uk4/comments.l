/* define states */
%x S0
%x S1
%x S2
%x S3

%%

 /* define state transitions and transition actions */
 /* based on state machine introduced in PJP_P3 0:25:33 */
<INITIAL>"//"   BEGIN(S0);
<INITIAL>"/"    BEGIN(S1);
<INITIAL>.      ECHO;

<S1>"*"         BEGIN(S2);
<S2>[^*]        ;
<S2>"*"         BEGIN(S3);
<S3>"*"         ;
<S3>[^*/]       BEGIN(S2);
<S3>"/"         BEGIN(INITIAL);

<S0>"\n"        BEGIN(INITIAL);
<S0>[^\n]       ;

%%

int main()
{
	yylex();
	return 0;
}
