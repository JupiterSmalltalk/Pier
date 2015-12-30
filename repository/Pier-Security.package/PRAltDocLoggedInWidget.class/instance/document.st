accessing
document
	self context isLoggedIn
		ifTrue: [ ^self alternate ].
	^self default