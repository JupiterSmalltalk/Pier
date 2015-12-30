tests
testLinkOutside
	self command root contents: '*/command*'.
	self command target: self command root.
	self command name: 'other'.
	self command execute.
	self assert: self command root contents = '*/command*'