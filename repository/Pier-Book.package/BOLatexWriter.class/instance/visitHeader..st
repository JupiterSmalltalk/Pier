visiting-document
visitHeader: aHeader
	| kind |
	kind := #('subsubsection' 'paragraph' 'subparagraph')
		at: (aHeader level max: 3).
	latex tag: kind; star; curly: aHeader text; lf.
	latex tag: 'label'; curly: [ stream nextPutAll: (self structureLabelFor: self publication with: aHeader hash) ]