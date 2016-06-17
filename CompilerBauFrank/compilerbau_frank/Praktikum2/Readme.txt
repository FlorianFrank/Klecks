Erste Aufgabe mit yacc und bison

first_program.klx -> ist das das testprogramm, das später der compiler übersetzten soll.
klx.l 			  -> enthält die Variablen die für unsere Sprache definiert sind. gibt eine Fehlermeldung aus, falls der Befehl nicht erkannt wird.
klx.y 			  -> enthält den eigentlichen Compiler und parst das Programm.
	Ein Programm kann aus: header klecks und trailer bestehen, so beginnt jedes Programm
		der Header schreibt "!PS-Adobe ... " in den Anfang der Ghostscript datei.
		ein klecks ist eine auszugebende Form z.B ein Kreis oder ein Rechteck. 
		Hierbei wird über die übergebenen Variablen geprüft, ob die anweiung in der Form "Ausdruck;" vorliegt und dann die entprechende Form in die Datei geschrieben.
	Ein Program kann auch aus: program klecks trailer bestehen. Dadurch kann man mehr als eine Anweisung schreiben. 
