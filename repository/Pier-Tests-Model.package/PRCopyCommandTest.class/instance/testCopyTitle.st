tests
testCopyTitle
	self command name: 'foo'; execute.
	self assert: (self structure title) = 'Command'.
	self assert: (self structure parent childrenDecoration
		at: 'foo') title = 'Foo'