tests-accessing
testName
	self assert: self command name = 'untitled'.
	self command name: 'something'.
	self assert: self command name = 'something'