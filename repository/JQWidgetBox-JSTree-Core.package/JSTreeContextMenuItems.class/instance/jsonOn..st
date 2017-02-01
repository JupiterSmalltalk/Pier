json
jsonOn: aStream
	aStream nextPut: ${.
		
	self menuItems 
		do: [ :each |
			each renderContext: self renderContext.
			aStream json: each ]
		separatedBy: [ aStream nextPut: $, ].
	
	aStream nextPut: $}.