tests-accessing
testAt
	| child1 child2 |
	self decoration
		add: (child1 := self firstChildInstance);
		add: (child2 := self secondChildInstance).

	self assert: (self decoration at: child1 name) = child1.
	self assert: (self decoration at: child2 name) = child2.
	self should: [ self decoration at: 'zork' ] raise: Error