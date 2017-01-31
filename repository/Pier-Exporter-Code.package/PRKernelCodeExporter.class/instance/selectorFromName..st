helpers
selectorFromName: aName
	| selector |
	selector := aName select: [ :each | each isAlphaNumeric ].
	[ selector first isDigit ]
		whileTrue: [ selector := selector allButFirst ].
		
	selector at: 1 put: selector first asLowercase.
		
	^ selector asSymbol