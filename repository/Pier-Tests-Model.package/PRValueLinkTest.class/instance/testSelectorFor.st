tests
testSelectorFor
	self assert: (self instance selectorFor: 'date') = #dateIn:.
	self assert: (self instance selectorFor: 'context') = #contextIn: