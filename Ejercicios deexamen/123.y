%{
#include <stdio.h>
%}

%token NUM
%left '*'

%%
line:
    NUM '*' NUM { printf("Expresi�n v�lida\n"); }
    ;
%%

int main() {
    yyparse();
    return 0;
}