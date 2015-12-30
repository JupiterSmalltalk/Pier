tests-conveniance
testSiblings
	self assert: self context siblings = (Array with: self context root).
	
	context := self context structure: (self context structure childrenDecoration at: 'folder').
	self assert: self context siblings = (Array with: self context structure).

	context := self context structure: (self context structure childrenDecoration at: 'child').
	self assert: (self context siblings includes: self context structure).
	self assert: self context siblings size = 2