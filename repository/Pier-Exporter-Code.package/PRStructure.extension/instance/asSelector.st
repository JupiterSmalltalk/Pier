*pier-exporter-code
asSelector
	| aName selector |
	aName := self absolutePath.
	aName := (aName = '/') ifTrue: [ self name ] ifFalse: [ aName ].

	selector := aName select: [ :each | each isAlphaNumeric ].
	[ selector first isDigit ]
		whileTrue: [ selector := selector allButFirst ].
		
	selector at: 1 put: (selector at: 1) asLowercase.
		
	^ selector asSymbol