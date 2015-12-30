tests-reference
testReferenceEmpty
	self assert: (self root relativePathTo: self root) = '.'.
	self assert: (self folder relativePathTo: self folder) = '.'.
	self assert: (self child relativePathTo: self child) = '.'.
	self assert: (self structure relativePathTo: self structure) = '.'.
	
	self assert: (self root relativePathFrom: self root) = '.'.
	self assert: (self folder relativePathFrom: self folder) = '.'.
	self assert: (self child relativePathFrom: self child) = '.'.
	self assert: (self structure relativePathFrom: self structure) = '.'