accessing-latex
latexHeader
	^ latexHeader ifNil: [ self defaultLatexHeader ]