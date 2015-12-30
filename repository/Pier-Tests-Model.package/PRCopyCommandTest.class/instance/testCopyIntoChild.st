tests
testCopyIntoChild
	self command
		name: 'foo';
		target: self structure.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: (self structure childrenDecoration
		includes: 'foo').
	self assert: (self structure childrenDecoration
		at: 'foo') = self command successAnswer structure