accessing-dynamic
contents: aString
	self 
		write: (self descriptionDocument 
			fromString: (aString ifNil: [ String new ]))
		using: self descriptionDocument