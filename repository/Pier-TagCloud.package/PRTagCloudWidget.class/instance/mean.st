accessing
mean
	mean isNil
		ifTrue: [ self computeParameters ].
	^ mean