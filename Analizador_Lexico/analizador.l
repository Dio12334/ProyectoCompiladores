%{
#include<stdio.h>
int line = 1;
}%

%option noyywrap c++

DIGITO [0-9]
NUM {DIGITO}{DIGITO}*
LETRA [A-Za-z]
ID {LETRA}{LETRA}*
relop (<=? | == | != | >=?)
addop [+-]
mulop [*/]
llave_a [{]
llave_c [}]
punto_coma [;]
par_a [(]
par_c [)]
assign [=]
cor_a [\[]
cor_c [\]]
coma [,]
NEWLINE [\n\r]

%%
{NUM}
{ID}
{relop}
{addop}
{mulop}
{llave_a}
{llave_c}
{punto_coma}
{par_a}
{par_c}
{assign}
{cor_a}
{cor_c}
{coma}
%%
