%option noyywrap
%{
#include <stdio.h>
%}

%%

[a-zA-Z][a-zA-Z0-9_]*    { printf("Identificador encontrado: %s\n", yytext); }
\n                       { /* Ignora las líneas en blanco */ }
.                        { /* Ignora otros caracteres */ }

%%

int main() {
    yylex(); // Inicia el proceso de análisis léxico
    return 0;
}
