tests-accessing
testName
	self assert: self root name = 'root'.
	self assert: self folder name = 'folder'.
	self assert: self child name = 'child'.
	self assert: self structure name = 'structure'