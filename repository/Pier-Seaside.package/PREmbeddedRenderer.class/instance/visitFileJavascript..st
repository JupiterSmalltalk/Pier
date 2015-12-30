visiting-structure
visitFileJavascript: aStructure
	<internal: 'text/javascript' priority: -10>
	<internal: 'application/javascript' priority: -10>

	html script
		attributes: (self attributesFor: link);
		url: aStructure file url