tests-testing
testIsAncestorOf
	self assert: (self root isAncestorOf: self root).
	self assert: (self root isAncestorOf: self folder).
	self assert: (self root isAncestorOf: self child).
	self assert: (self root isAncestorOf: self structure).

	self deny: (self folder isAncestorOf: self root).
	self assert: (self folder isAncestorOf: self folder).
	self assert: (self folder isAncestorOf: self child).
	self assert: (self folder isAncestorOf: self structure).

	self deny: (self child isAncestorOf: self root).
	self deny: (self child isAncestorOf: self folder).
	self assert: (self child isAncestorOf: self child).
	self deny: (self child isAncestorOf: self structure).

	self deny: (self structure isAncestorOf: self root).
	self deny: (self structure isAncestorOf: self folder).
	self deny: (self structure isAncestorOf: self child).
	self assert: (self structure isAncestorOf: self structure)