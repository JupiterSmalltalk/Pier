events
doExecute
	| parent |
	super doExecute.
	self root incomingReferences
		toAll: (self structure enumerator
			everything contents);
		do: [ :each | each target: nil ].
	parent := self structure parent.
	self structure remove.
	self successAnswer: (self context
		structure: parent)