tests-testing
testIsRoot
	self assert: self root isRoot.
	self deny: self folder isRoot.
	self deny: self child isRoot.
	self deny: self structure isRoot