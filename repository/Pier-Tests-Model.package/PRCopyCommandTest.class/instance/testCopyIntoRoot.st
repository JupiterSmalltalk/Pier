tests
testCopyIntoRoot
	self command
		name: 'foo';
		target: self command root.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: (self command root childrenDecoration
		includes: 'foo').
	self assert: (self command root childrenDecoration
		at: 'foo') = self command successAnswer structure