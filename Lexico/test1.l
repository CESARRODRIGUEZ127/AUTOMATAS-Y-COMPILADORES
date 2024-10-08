%option noyywrap
%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("Número entero encontrado:\n");}
%%
int main()
{
yylex();return 0;
}