tests-file
testFileInitialized
	self assert: (self command readUsing: PRFile new descriptionFile) = self structure file