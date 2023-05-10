%{
/* Define some variables here */
int lineCount = 0;
int wordCount = 0;
int charCount = 0;
%}


%%

	/* Rules here */
[a-zA-Z0-9]+        { ++wordCount; charCount += strlen(yytext); }
\n                  { ++lineCount; ++charCount; }
.                   { ++charCount; }

%%

int main(int argc, char **argv)
{
        if ( argc > 1 ) {
            FILE *file;
            file = fopen(argv[1], "r");
                if (!file) {
                    fprintf(stderr, "Something is wrong with %s\n", argv[1]);
                    return 1;
                }
            yyin = file;
        }
        else {
            yyin = stdin;
        }
        yylex();
        printf("lines: %d words: %d characters: %d\n", lineCount, wordCount, charCount);
        return 0;
}
    
