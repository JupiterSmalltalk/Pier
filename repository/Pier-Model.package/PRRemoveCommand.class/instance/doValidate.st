events
doValidate
	super doValidate.
	self structure isRoot
		ifFalse: [ ^ self ].
	(PRStructureError structure: self structure)
		signal: 'Unable to remove root node.'