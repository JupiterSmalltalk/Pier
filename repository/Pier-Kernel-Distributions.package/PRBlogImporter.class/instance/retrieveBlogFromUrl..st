action
retrieveBlogFromUrl: aBlogUrl
	| response |
	
	[ [ response := ZnEasy get: aBlogUrl ]
			on: ZnMissingHost
			do: [ :ex | response := ZnEasy get: 'http://', aBlogUrl  ] ]
		on: Error
		do: [ :ex | self errorTextFromException: ex.
		^ nil ].
		
	(#('xml' 'html') includes: response contentType sub) ifFalse: [
		self errorMessage: 'Didn''t receive an html or xml response from the url: "',  aBlogUrl, '"'.
		^ nil ].
	
	response contentType sub = 'html' ifTrue: [
		response := self extractFeedFromHtml: response contents ].
		
	response isNil ifTrue: [ 
		self errorMessage: 'Failed to find a blog feed from url: "',  aBlogUrl, '"'.
		^ nil ].
	
	^ TFRssReaderFactory fromXml: response contents