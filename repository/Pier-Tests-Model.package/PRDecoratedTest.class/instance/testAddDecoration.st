tests-adding
testAddDecoration
	| mock1 mock2 index1 index2 |
	mock1 := self decorationWithPriority: 10.
	mock2 := self decorationWithPriority: -5.

	self assert: (self instance addDecoration: mock1) = mock1.
	self assert: self instance = mock1 decorated.
	self assert: (self instance decorations includes: mock1).

	self assert: (self instance addDecoration: mock2) = mock2.
	self assert: self instance = mock2 decorated.
	self assert: (self instance decorations includes: mock2).

	index1 := self instance decorations indexOf: mock1.
	index2 := self instance decorations indexOf: mock2.
	self assert: index1 > index2.

	self should: [ self instance addDecoration: mock1 ] raise: PRDecorationError.
	self should: [ self instance addDecoration: mock2 ] raise: PRDecorationError.
	self assert: (self instance decorations includes: mock2).
	self assert: (self instance decorations includes: mock2)