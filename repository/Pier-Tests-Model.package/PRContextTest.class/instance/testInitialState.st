tests
testInitialState
	self assert: self context structure = self context root.
	self assert: self context command isView