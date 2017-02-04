visiting-document
visitDefinitionList: aDefinitionList
	latex tag: 'begin'; curly: 'list'; curly: nil; curly: nil; lf.
	super visitDefinitionList: aDefinitionList.
	latex tag: 'end'; curly: 'list'; lf