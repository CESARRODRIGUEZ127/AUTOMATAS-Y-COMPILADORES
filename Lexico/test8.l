%{
#include <stdio.h>
%}

%%
/* Verbos de la categor�a analizar */
analizar|comparar|diferenciar|organizar|examinar { printf("Verbo de an�lisis: %s\n", yytext); }
/* Adjetivos calificativos positivos */
bueno|excelente|maravilloso|fant�stico            { printf("Adjetivo positivo: %s\n", yytext); }
/* Conjunciones */
y|o|pero|aunque|sin embargo                      { printf("Conjunci�n: %s\n", yytext); }
/* Preposiciones */
a|ante|bajo|cabe|con|contra|de|desde|en|entre    { printf("Preposici�n: %s\n", yytext); }
/* Pronombres */
yo|t�|�l|ella|nosotros|vosotros|ellos|ellas      { printf("Pronombre: %s\n", yytext); }
[a-zA-Z]+                                        { /* Ignorar otras palabras */ }
%%

int main() {
    yylex();
    return 0;
}

