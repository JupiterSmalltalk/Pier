testing
isHtmlRequest: aRequest
	| isHtmlRequest |
	isHtmlRequest := (aRequest accept 
		collect: [ :each | each value = WAMimeType textHtml ]) 
			detect: [ :each | each ] 
			ifNone: [ aRequest contentType notNil and: [ aRequest contentType = WAMimeType textHtml ] ].
		
	^ isHtmlRequest