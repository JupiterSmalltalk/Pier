processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot stylesheet
		addScreen;
		addProjection;
		url: (self urlOf: #screenCss).
	aHtmlRoot stylesheet
		addPrint;
		url: (self urlOf: #printCss).
	aHtmlRoot if ie do: [
		aHtmlRoot stylesheet
			addScreen;
			addProjection;
			url: (self urlOf: #ieCss) ]