tests-accessing
testType
	self assert: self command type = PRPage.
	self command type: PRFile.
	self assert: self command type = PRFile