events
doExecute
	super doExecute.
	self context user isNil 
		ifFalse: [ self context user newToken ]