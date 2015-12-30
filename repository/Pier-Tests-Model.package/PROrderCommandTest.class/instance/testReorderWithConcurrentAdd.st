tests
testReorderWithConcurrentAdd
	self command structures
		swap: 1 with: 3.
	self structure childrenDecoration
		add: (PRPage named: 'd').
	self command execute.
	self assert: self childrenNames = #( 'c' 'b' 'a' 'd' )