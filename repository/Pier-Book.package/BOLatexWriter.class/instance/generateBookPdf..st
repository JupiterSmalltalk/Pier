generating
generateBookPdf: aBook
	latex comment: 'hypersetup'.
	latex tag: 'hypersetup'; curly: [
		latex lf; tab; print: 'pdftitle='; curly: aBook title trimBoth; print: ','.
		aBook authors isNil 
			ifFalse: [ latex lf; tab; print: 'pdfauthor='; curly: aBook authors trimBoth; lf ] ].
	latex lf