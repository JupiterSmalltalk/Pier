tests-accessing
testAtIfAbsent
	| child1 child2 |
	self decoration
		add: (child1 := self firstChildInstance);
		add: (child2 := self secondChildInstance).

	self assert: (self decoration at: child1 name ifAbsent: [ nil ]) = child1.
	self assert: (self decoration at: child2 name ifAbsent: [ nil ]) = child2.
	self assert: (self decoration at: 'zork' ifAbsent: [ nil ]) isNil