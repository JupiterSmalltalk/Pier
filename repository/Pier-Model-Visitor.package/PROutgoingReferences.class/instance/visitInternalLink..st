visiting-document
visitInternalLink: anObject
	super visitInternalLink: anObject.
	(anObject target isNil or: [ structures includes: anObject target ])
		ifTrue: [ ^ self ].
	(continue value: anObject)
		ifTrue: [ self visit: anObject target ]