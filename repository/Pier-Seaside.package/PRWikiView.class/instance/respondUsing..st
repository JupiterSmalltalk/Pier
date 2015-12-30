responding
respondUsing: aResponse
	| structure |
	super respondUsing: aResponse.
	structure := self context structure.
	aResponse contentType: 'text/plain'.
	aResponse stream nextPutAll:
		(structure descriptionDocument 
			toString: structure document)