tests
testConflict
	self command name: 'folder'.
	self
		should: [ self command execute ]
		raise: PRConflictingNameError