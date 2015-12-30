tests-reference
testReferenceParent
	self assert: (self folder relativePathTo: self root) = '..'.
	self assert: (self child relativePathTo: self folder) = '..'.
	self assert: (self structure relativePathTo: self folder) = '..'.
	
	self assert: (self root relativePathFrom: self folder) = '..'.
	self assert: (self folder relativePathFrom: self child) = '..'.
	self assert: (self folder relativePathFrom: self structure) = '..'.

	self assert: (self child relativePathTo: self root) = '../..'.
	self assert: (self structure relativePathTo: self root) = '../..'.
	
	self assert: (self root relativePathFrom: self child) = '../..'.
	self assert: (self root relativePathFrom: self structure) = '../..'