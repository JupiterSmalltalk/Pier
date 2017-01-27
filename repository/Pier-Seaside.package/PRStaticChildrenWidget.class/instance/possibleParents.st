accessing
possibleParents
	| retVal |
	self context ifNil: [ ^#() ].
	retVal := OrderedCollection new.
	self addAll: (self context structure parents at: 1 ifAbsent: [ ^#() ]) to: retVal.
	^retVal