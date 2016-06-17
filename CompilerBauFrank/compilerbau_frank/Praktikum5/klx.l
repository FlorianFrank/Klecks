%{
#include "klx.tab.h"
%}

%option yylineno


%%

Circle			return CIRCLE;
Rectangle		return RECTANGLE;
Triangle		return TRIANGLE;

Fill			return FILL;
Color			return COLOR;
Rotate			return ROTATE;
Scale			return SCALE;

;				return SEMICOLON;
\[				return SQOPEN;
\]				return SQCLOSE;

@				return AT;
[0-9]+			yylval=atoi(yytext); return NUMBER;

\+				return PLUS;
\-				return MINUS;
\/				return DIVIDE;
\*				return TIMES;
\(				return OPEN;
\)				return CLOSE;


[[:space:]] 	;
\/\/.*			;
.				fprintf(stderr, "WARNING (%d): illegal character %c ignored\n", yylineno, yytext[0]);








%%
