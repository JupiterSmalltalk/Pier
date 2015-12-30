tests
testCopy
	self command name: 'foo'.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: (self structure parent childrenDecoration
		includes: 'foo').
	self assert: (self structure parent childrenDecoration
		at: 'foo') = self command successAnswer structure