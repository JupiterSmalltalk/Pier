tests
testMoveIntoChild
	self command target: self structure.
	self
		should: [ self command execute ]
		raise: PRInvalidNestingError.
	self assert: (self structure parent childrenDecoration
		includes: self structure name)