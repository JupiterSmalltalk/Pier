accessing
created: anObject
	created := anObject isString
		ifTrue: [ self parseTimestamp: anObject ]
		ifFalse: [ anObject ]