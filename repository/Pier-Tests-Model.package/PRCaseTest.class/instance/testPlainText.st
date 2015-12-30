tests
testPlainText
	self structure contents: nil.
	self assert: self structure plainText = ''.

	self structure contents: ''.
	self assert: self structure plainText = ''.

	self structure contents: 'Foo'.
	self assert: self structure plainText = 'Foo'