tests-testing
testIsEmpty
	self assert: self decoration isEmpty.
	self decoration add: self firstChildInstance.
	self deny: self decoration isEmpty