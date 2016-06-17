%{
#include <stdio.h>


%}



%token CIRCLE RECTANGLE
%token SEMICOLON
%token SQOPEN SQCLOSE
%token AT
%token NUMBER
%token FLOAT

%%


program: header stmtlist trailer;
stmtlist: ;
stmtlist: stmtlist stmt;


header: { printf("%%!PS-Adobe\n"
					"%%%% Generated by klx version 1.0\n");};

trailer: ;

stmt: {printf("gsave\n");} options klecks {printf("grestore\n");};



klecks: CIRCLE SEMICOLON {printf("newpath 10 10 10 0 360 arc fill\n");};


options: ;
options: SQOPEN optionlist SQCLOSE;

optionlist: option;

option: NUMBER AT NUMBER {printf("%d %d translate\n", $1, $3); };

%%


int yyerror(char * msg) {
	fprintf(stderr, "ERROR: %s\n", msg);
	return 0;
}


int main(void) {
	yyparse();
	return 0;
}
