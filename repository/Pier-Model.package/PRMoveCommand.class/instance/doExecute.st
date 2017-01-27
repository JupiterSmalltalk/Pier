events
doExecute
	super doExecute.
	self structure name: self name.
	self structure parent = self target ifFalse: [
		self target 
			addChild: self structure remove ].
	self updateLinksFor: self structure