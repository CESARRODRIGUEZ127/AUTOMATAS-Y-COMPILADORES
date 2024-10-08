%option noyywrap
%{
#include <stdio.h>
%}

%%

[a-zA-Z][a-zA-Z0-9_]*    { printf("Identificador encontrado: %s\n", yytext); }
\n                       { /* Ignora las l�neas en blanco */ }
.                        { /* Ignora otros caracteres */ }

%%

int main() {
    yylex(); // Inicia el proceso de an�lisis l�xico
    return 0;
}