events
doExecute
	super doExecute.
	self fields keysAndValuesDo: [ :desc :value | self target write: value using: desc ]