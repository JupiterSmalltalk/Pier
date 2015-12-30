tests
testContents
	self structure contents: nil.
	self assert: self structure contents = ''.

	self structure contents: ''.
	self assert: self structure contents = ''.

	self structure contents: 'Foo'.
	self assert: self structure contents = 'Foo'