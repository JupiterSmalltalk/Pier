tests-actions
testAdd
	| child1 child2 |
	child1 := self firstChildInstance.
	self assert: (self decoration add: child1) = child1.
	self assert: self decorated = child1 parent.

	child2 := self secondChildInstance.
	self assert: (self decoration add: child2) = child2.
	self assert: self decorated = child2 parent