tests
testMove
	self command target: self command root.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: (self command root childrenDecoration
		includes: self structure name)