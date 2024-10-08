%option noyywrap
%{
#include <stdio.h>
%}

%%

[0-9]+\.[0-9]+    { printf("Número decimal encontrado: %s\n", yytext); }

%%

int main() {
    yylex(); 
    return 0;
}
