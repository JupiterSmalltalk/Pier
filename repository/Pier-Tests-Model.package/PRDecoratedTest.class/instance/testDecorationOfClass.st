tests-querying
testDecorationOfClass
	| mock |
	self should: [ self instance decorationOfClass: PRMockDecoration ] raise: PRDecorationError.
	self instance addDecoration: (mock := self decorationWithPriority: 1).
	self assert: (self instance decorationOfClass: PRMockDecoration) = mock