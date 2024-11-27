%{
#include <stdio.h>
%}

%token NUM
%left '*'

%%
line:
    NUM '*' NUM { printf("Expresión válida\n"); }
    ;
%%

int main() {
    yyparse();
    return 0;
}