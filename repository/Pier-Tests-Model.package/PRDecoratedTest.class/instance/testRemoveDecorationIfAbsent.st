tests-removing
testRemoveDecorationIfAbsent
| mock1 mock2 |
	self instance
		addDecoration: (mock1 := self decorationWithPriority: 1);
		addDecoration: (mock2 := self decorationWithPriority: 2).

	self assert: (self instance removeDecoration: mock1 ifAbsent: [ nil ]) = mock1.
	self deny: (self instance decorations includes: mock1).
	self assert: (self instance decorations includes: mock2).

	self assert: (self instance removeDecoration: mock2 ifAbsent: [ nil ]) = mock2.
	self deny: (self instance decorations includes: mock1).
	self deny: (self instance decorations includes: mock2).

	self assert: (self instance removeDecoration: mock2 ifAbsent: [ nil ]) isNil