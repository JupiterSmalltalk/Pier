*pier-seaside
doAnswer
	super doAnswer.
	self structure isComponent
		ifTrue: [ self structure flush ]