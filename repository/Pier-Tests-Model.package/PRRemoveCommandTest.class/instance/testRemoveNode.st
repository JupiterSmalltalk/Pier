tests
testRemoveNode
	self structure
		addChild: (PRPage named: 'foo');
		addChild: (PRPage named: 'bar').
	self assert: (self kernel root childrenDecoration
		includes: self structure name).
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure parent isNil.
	self deny: (self kernel root childrenDecoration
		includes: self structure name)