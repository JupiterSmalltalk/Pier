tests-accessing
testIncludes
	| child1 child2 |
	self decoration
		add: (child1 := self firstChildInstance);
		add: (child2 := self secondChildInstance).

	self assert: (self decoration includes: child1 name).
	self assert: (self decoration includes: child2 name).
	self deny: (self decoration includes: 'zork')