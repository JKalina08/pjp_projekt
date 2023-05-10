%{
int lineCount = 0;
int wordCount = 0;
int charCount = 0;
%}


%%
\n              { lineCount++; charCount++; }
[a-zA-Z]+    { wordCount++; charCount += yyleng; }
.               { charCount++; }
%%

int main(int argc, char **argv)
{
        if ( argc > 1 ){
            FILE *file;
            file = fopen(argv[1], "r");
                if (!file) {
                fprintf(stderr, "Cannot open file %s\n", argv[1]);
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
