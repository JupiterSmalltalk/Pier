visiting-document
visitInternalLink: anObject
	(structures includes: anObject target)
		ifTrue: [ block value: anObject ]