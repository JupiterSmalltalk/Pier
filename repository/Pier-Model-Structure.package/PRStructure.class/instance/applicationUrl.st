querying-path
applicationUrl
	| url aRequestContext |
	aRequestContext := WACurrentRequestContext value.
	url := aRequestContext application url copy.
	url addToPath: self absolutePath.
	
	^ url