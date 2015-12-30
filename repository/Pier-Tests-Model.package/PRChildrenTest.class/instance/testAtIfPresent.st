tests-accessing
testAtIfPresent
	| child1 child2 |
	self decoration
		add: (child1 := self firstChildInstance);
		add: (child2 := self secondChildInstance).

	self assert: (self decoration
		at: child1 name
		ifPresent: [ :val | val ]) = child1.
	self assert: (self decoration
		at: child2 name
		ifPresent: [ :val | 'zork' ]) = 'zork'.
	self assert: (self decoration
		at: 'zork'
		ifPresent: [ :val | self assert: false ]) isNil