events
doExecute
	| structure |
	super doExecute.
	self target childrenDecoration
		add: (structure := self structure copy
			name: self name;
			title: nil;
			yourself).
	self updateLinksFor: structure.
	self successAnswer: (self context
		structure: structure)