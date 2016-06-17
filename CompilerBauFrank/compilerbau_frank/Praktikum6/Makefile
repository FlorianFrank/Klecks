all: klx program.ps

lex.yy.c: klx.l
	flex klx.l

klx.tab.c: klx.y
	bison -d klx.y

klx.tab.h: klx.y
	bison -d klx.y

klx: lex.yy.c klx.tab.c klx.tab.h symtab.c symtab.h 
	gcc lex.yy.c klx.tab.c  symtab.c -lfl -o klx

program.ps: klx program.klx
	./klx < program.klx > output.ps
	

clean:
	rm -f *.o output.ps lex.yy.c klx.tab.c klx.tab.h *.bak klx
