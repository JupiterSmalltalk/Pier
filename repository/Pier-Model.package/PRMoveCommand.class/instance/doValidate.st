events
doValidate
	super doValidate.
	(self structure isAncestorOf: self target)
		ifFalse: [ ^ self ].
	PRInvalidNestingError
		description: self magritteDescription
		signal: self structure title printString , ' can not be moved into itself'