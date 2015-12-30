tests
testReorderBasic
	self command structures
		swap: 1 with: 3.
	self command execute.
	self assert: self childrenNames = #( 'c' 'b' 'a' )