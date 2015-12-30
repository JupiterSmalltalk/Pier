tests
testReorderWithConcurrentDelete
	self command structures
		swap: 1 with: 3.
	self structure childrenDecoration
		remove: self children first.
	self command execute.
	self assert: self childrenNames = #( 'c' 'b' )