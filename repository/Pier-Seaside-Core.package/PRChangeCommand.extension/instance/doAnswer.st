*pier-seaside-core
doAnswer
	super doAnswer.
	self structure isComponent
		ifTrue: [ self structure flush ]