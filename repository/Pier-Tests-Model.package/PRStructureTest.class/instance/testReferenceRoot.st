tests-reference
testReferenceRoot
	self assert: (self root absolutePath) = '/'.
	self assert: (self folder absolutePath) = '/folder'.
	self assert: (self child absolutePath) = '/folder/child'.
	self assert: (self structure absolutePath) = '/folder/structure'.

	self assert: (self root relativePathTo: self root) = '.'.
	self assert: (self root relativePathTo: self folder) = 'folder'.
	self assert: (self root relativePathTo: self child) = 'folder/child'.
	self assert: (self root relativePathTo: self structure) = 'folder/structure'.
	
	self assert: (self root relativePathFrom: self root) = '.'.
	self assert: (self folder relativePathFrom: self root) = 'folder'.
	self assert: (self child relativePathFrom: self root) = 'folder/child'.
	self assert: (self structure relativePathFrom: self root) = 'folder/structure'