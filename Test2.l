%option noyywrap
%{
#include <stdio.h>
%}

%%

[0-9]+\.[0-9]+    { printf("N�mero decimal encontrado: %s\n", yytext); }

%%

int main() {
    yylex(); 
    return 0;
}
