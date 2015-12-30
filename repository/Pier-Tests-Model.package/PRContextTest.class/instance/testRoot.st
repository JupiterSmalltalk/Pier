tests-conveniance
testRoot
	self assert: self context root == self context structure.
	
	context := self context structure: (self context structure childrenDecoration at: 'folder').
	self assert: self context root == self context parent.

	context := self context structure: (self context structure childrenDecoration at: 'child').
	self assert: self context root == self context parent parent