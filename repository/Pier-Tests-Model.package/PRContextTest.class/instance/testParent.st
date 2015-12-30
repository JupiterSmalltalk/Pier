tests-conveniance
testParent
	self assert: self context parent isNil.
	
	context := self context structure: (self context structure childrenDecoration at: 'folder').
	self assert: self context root == self context parent.

	context := self context structure: (self context structure childrenDecoration at: 'child').
	self assert: (self context root childrenDecoration at: 'folder') == context parent