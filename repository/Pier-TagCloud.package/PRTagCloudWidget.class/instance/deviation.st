accessing
deviation
	deviation isNil
		ifTrue: [ self computeParameters ].
	^ deviation