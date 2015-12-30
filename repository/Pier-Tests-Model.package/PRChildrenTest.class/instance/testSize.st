tests-accessing
testSize
	self assert: self decoration size = 0.
	self decoration
		add: self firstChildInstance;
		add: self secondChildInstance.
	self assert: self decoration size = 2