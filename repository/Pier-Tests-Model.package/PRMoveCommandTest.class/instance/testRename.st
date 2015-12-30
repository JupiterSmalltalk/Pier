tests
testRename
	self command name: 'foo'.
	self
		shouldnt: [ self command execute ]
		raise: PRConflictingNameError.
	self deny: (self structure parent childrenDecoration
		includes: 'command').
	self assert: (self structure parent childrenDecoration
		includes: 'foo')