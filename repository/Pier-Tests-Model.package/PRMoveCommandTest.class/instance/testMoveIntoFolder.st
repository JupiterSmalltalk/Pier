tests
testMoveIntoFolder
	self command target: (self command root childrenDecoration
		at: 'folder').
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self deny: (self command root childrenDecoration
		includes: self structure name).
	self assert: ((self command root childrenDecoration
		at: 'folder') childrenDecoration
			includes: self structure name)