accessing-children
includes: aString
	self at: aString ifAbsent: [ ^ false ].
	^ true