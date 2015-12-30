tests
testDeletionMany
	| diff |
	diff := PRDiffAlgorithm from: #(a b c) to: #().
	self assert: diff patchset =  #((#- a) (#- b) (#- c))