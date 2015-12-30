tests
testRenameExisting
	self command name: 'folder'.
	self
		should: [ self command execute ]
		raise: PRConflictingNameError.
	self assert: (self structure parent childrenDecoration
		includes: 'command').
	self assert: (self structure parent childrenDecoration
		includes: 'folder')