instance creation
context: aContext
	(self isValidIn: aContext)
		ifFalse: [ self error: self label , ' is not useable in the given context.' ].
	^ self new
		setContext: aContext;
		yourself