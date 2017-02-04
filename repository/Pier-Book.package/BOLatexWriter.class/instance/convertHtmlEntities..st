queries
convertHtmlEntities: aString
	^ ((((aString 
		copyReplaceAll: '&lt;' with: '<')
		copyReplaceAll: '&gt;' with: '>')
		copyReplaceAll: '&amp;' with: '&')
		copyReplaceAll: '&larr;' with: '<-')
		copyReplaceAll: '&rarr;' with: '->'