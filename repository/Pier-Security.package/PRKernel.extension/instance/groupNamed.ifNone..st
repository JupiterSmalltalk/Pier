*pier-security-accessing
groupNamed: aString ifNone: aBlock
	^ self groups 
		detect: [ :each | each name = aString ]
		ifNone: aBlock