tests-testing
testHasParent
	self deny: self root hasParent.
	self assert: self folder hasParent.
	self assert: self child hasParent.
	self assert: self structure hasParent