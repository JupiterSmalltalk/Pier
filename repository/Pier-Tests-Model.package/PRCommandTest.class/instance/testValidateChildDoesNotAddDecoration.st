tests-validating
testValidateChildDoesNotAddDecoration
	self command
		validateChild: (PRPage named: 'zork')
		in: self context root.
	self structure
		decorationOfClass: self structure childrenDecoration
		ifAbsent: [ ^ self ].
	self assert: self structure hasChildren