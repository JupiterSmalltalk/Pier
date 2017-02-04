accessing-latex
latexFooter
	^ latexFooter ifNil: [ self defaultLatexFooter ]