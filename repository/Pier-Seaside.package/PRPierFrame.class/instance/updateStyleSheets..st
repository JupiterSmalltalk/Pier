updating-extras
updateStyleSheets: aHtmlRoot
	self structure styleSheets do: [ :structure |
		aHtmlRoot stylesheet url: structure url ]