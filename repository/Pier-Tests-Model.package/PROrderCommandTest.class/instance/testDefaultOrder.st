tests-setup
testDefaultOrder
	self assert: self childrenNames = #( 'a' 'b' 'c' ).
	self assert: (self command class isValidIn: self context)