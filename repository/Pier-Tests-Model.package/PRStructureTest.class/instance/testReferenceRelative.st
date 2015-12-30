tests-reference
testReferenceRelative
	self assert: (self structure relativePathFrom: self child) = '../structure'.
	self assert: (self child relativePathFrom: self structure) = '../child'.
	
	self assert: (self child relativePathTo: self structure) = '../structure'.
	self assert: (self structure relativePathTo: self child) = '../child'