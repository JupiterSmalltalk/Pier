tests
testLinkInside
	self command structure contents: '*../folder*'.
	self command target: (self command root childrenDecoration
		at: 'folder').
	self command execute.
	self assert: self command structure contents =  '*..*'