visiting-structure
visitBook: aStructure
	latex comment: 'This is an automatically generated file, do not modify manually!'.
	latex comment: 'This book is published using Seaside, Magritte and the Pier book publishing engine.'.
	latex comment: DateAndTime now greaseString.
	latex lf.
	
	stream nextPutAll: aStructure latexHeader; nextPut: Character lf.
	latex lf.
	
	self generateBookPdf: aStructure.
	self generateBookTitle: aStructure.
	
	latex comment: 'document'.
	latex tag: 'begin'; curly: 'document'; lf.
	latex lf.
	
	latex tag: 'frontmatter'; lf.
	latex tag: 'maketitle'; lf.
	latex tag: 'tableofcontents'; lf.
	latex tag: 'sloppy'; lf.
	latex lf.
	
	latex tag: 'mainmatter'; lf.
	latex lf.

	super visitBook: aStructure.
	
	latex lf.
	latex tag: 'backmatter'; lf.
	
	stream nextPutAll: aStructure latexFooter; nextPut: Character lf.
	latex tag: 'end'; curly: 'document'; lf