streaming
print: anObject
	anObject isNil
		ifTrue: [ ^ self ].
	anObject isBlock
		ifTrue: [ anObject value ]
		ifFalse: [ self nextPutAll: anObject greaseString ]