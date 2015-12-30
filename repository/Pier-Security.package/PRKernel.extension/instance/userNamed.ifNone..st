*pier-security-accessing
userNamed: aString ifNone: aBlock
	^ self users
		detect: [ :each | each name = aString ]
		ifNone: aBlock