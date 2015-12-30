tests
testLinkRelative
	self command root contents: '*command*'.
	self command target: (self command root childrenDecoration
		at: 'folder').
	self command name: 'other'.
	self command execute.
	self assert: self command root contents = '*folder/other*'