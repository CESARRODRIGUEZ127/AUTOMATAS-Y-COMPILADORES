%option noyywrap
%{
#include <stdio.h>
%}

%%

[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(edu|mx)    { printf("Correo institucional encontrado: %s\n", yytext); }

%%

int main() {
    yylex(); 
    return 0;
}
