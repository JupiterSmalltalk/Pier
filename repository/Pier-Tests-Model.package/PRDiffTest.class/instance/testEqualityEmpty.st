tests
testEqualityEmpty
	| diff |
	diff := PRDiffAlgorithm from: #() to: #().
	self assert: diff patchset =  #()