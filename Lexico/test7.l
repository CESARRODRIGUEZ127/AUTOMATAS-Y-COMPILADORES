%{
#include <stdio.h>
%}

%%
[a-z]    { putchar(yytext[0]); }  /* Si es min�scula, la imprime tal cual */
[A-Z]    { putchar(yytext[0] + 'a' - 'A'); }  /* Convierte a min�scula */
.        { putchar(yytext[0]); }  /* Para cualquier otro car�cter */
\n       { putchar('\n'); }  /* Para las nuevas l�neas */
%%

int main() {
    yylex();
    return 0;
}
