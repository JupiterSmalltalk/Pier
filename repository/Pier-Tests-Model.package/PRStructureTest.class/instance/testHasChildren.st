tests-testing
testHasChildren
	self assert: self root hasChildren.
	self assert: self folder hasChildren.
	self deny: self child hasChildren.
	self deny: self structure hasChildren