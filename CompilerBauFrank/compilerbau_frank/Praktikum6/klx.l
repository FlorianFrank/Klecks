%{
#include "symtab.h"
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
[0-9]+			yylval.i=atoi(yytext); return INTEGER;

=				return ASSIGN;
\+				return PLUS;
\-				return MINUS;
\/				return DIVIDE;
\*				return TIMES;
\(				return OPEN;
\)				return CLOSE;
[a-zA-Z]+		{yylval.n=lookup(yytext); return ID;
				if(yylval.n == NULL) yylval.n=insert(yytext);
				return ID;
				}


[[:space:]] 	;
\/\/.*			;
.				fprintf(stderr, "WARNING (%d): illegal character %c ignored\n", yylineno, yytext[0]);








%%
