%{
#define a_TOK 1
#define b_TOK 2
#define c_TOK 3
#define d_TOK 4
#define f_TOK 5
#define NOT_CORRECT_TERMINAL -1
%}

%%
 	/* terminals -> return found token */
[ \t\n] ;
a  	return(a_TOK);
b  	return(b_TOK);
c  	return(c_TOK);
d  	return(d_TOK);
f  	return(f_TOK);
.  	return(NOT_CORRECT_TERMINAL);

%%

int symbol;

int main()
{
	int err = -1;
	symbol = yylex();
	err = S();

	/* So far correct parsing and no input left */
	if (err == 0 && symbol == 0)
		puts("Correct recursive descent derivation");
	else
		puts("Incorrect recursive descent derivation");
	return err;
}

/* S -> AB */
int S(void)
{
	int err = -1;
	puts("S -> AB");
	err = A();
        if (err == 0)
	{
		err = B();
	}
        return err;
}

/* A -> a A' */
int A(void)
{
	int err = -1;
	if (symbol == a_TOK)
	{
		puts("A -> aA'");
		symbol = yylex();
		err = Ap();	
	}
	return err;
}

/* A' -> d | bAc | Bc */
int Ap(void)
{ 
	int err = -1;

	switch(symbol)
	{
	case d_TOK:
		puts("A' -> d");
		symbol = yylex();
		err = 0;
		break;
	
/*
doplnte zbytek pravidla pro A' tj. Ap
*/  
  
    }
	return err;
}

/* B -> fB' */
int B(void)
{ 
	int err = -1;
	if(symbol == f_TOK)
	{
		puts("B -> fB'");
		symbol = yylex();
		err = Bp();
	}
	return err;
}

/* B' -> A | epsilon */
int Bp(void)
{

/*
    Doplnte zbytek pravidla pro B' tj. Bp
*/    
    
}
