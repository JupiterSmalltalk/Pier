tests
testAddConflict
	self
		shouldnt: [ self command execute ]
		raise: PRConflictingNameError.
	self
		should: [ self command execute ]
		raise: PRConflictingNameError