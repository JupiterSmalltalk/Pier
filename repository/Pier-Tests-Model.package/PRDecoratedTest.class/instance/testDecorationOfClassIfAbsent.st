tests-querying
testDecorationOfClassIfAbsent
	| mock |
	self assert: (self instance decorationOfClass: PRMockDecoration ifAbsent: [ nil ]) isNil.
	self instance addDecoration: (mock := self decorationWithPriority: 1).
	self assert: (self instance decorationOfClass: PRMockDecoration) = mock