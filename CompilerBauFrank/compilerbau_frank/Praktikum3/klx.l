%{
#include "klx.tab.h"
%}

%option yylineno


%%

kreis			return CIRCLE;
;				return SEMICOLON;
\[				return SQOPEN;
\]				return SQCLOSE;
@				return AT;
[0-9]+			yylval=atoi(yytext); return NUMBER;


[[:space:]] 	;
\/\/.*			;
.				fprintf(stderr, "WARNING (%d): illegal character %c ignored\n", yylineno, yytext[0]);








%%
