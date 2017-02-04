visiting-document
visitVerbatim: anObject
	(anObject type isNil or: [ anObject type = 'latex' ])
		ifTrue: [ stream nextPutAll: anObject text ]