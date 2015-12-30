visiting
start: anObject
	(acceptToken isEmpty and: [ rejectToken isEmpty ])
		ifTrue: [ ^ self ].
	super start: anObject