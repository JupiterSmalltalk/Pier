accessing
context: aContext
	aContext isValid
		ifFalse: [ ^ self forbidden: aContext ].
	context := aContext.
	children := nil.
	self update