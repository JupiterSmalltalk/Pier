tests-actions
testRemove
	| child1 child2 |
	self decoration
		add: (child1 := self firstChildInstance);
		add: (child2 := self secondChildInstance).
	self assert: (self decoration remove: child1) = child1.
	self assert: (self decoration remove: child2) = child2.
	self assert: (self decoration isEmpty).
	self assert: (self decoration decorated isNil)