%option noyywrap
%{
#include <stdio.h>
%}

%%

[A-Z]{4}[0-9]{6}[HM][A-Z]{2}[A-Z]{3}[0-9]{2}    { printf("CURP encontrada: %s\n", yytext); }
\n                                               { /* Ignora las l�neas en blanco */ }
.                                                { /* Ignora otros caracteres */ }

%%

int main() {
    yylex(); // Inicia el proceso de an�lisis l�xico
    return 0;
}