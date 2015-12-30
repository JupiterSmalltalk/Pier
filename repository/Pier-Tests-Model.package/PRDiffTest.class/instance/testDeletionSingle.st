tests
testDeletionSingle
	| diff |
	diff := PRDiffAlgorithm from: #(a b c) to: #(a c).
	self assert: diff patchset =  #((= a) (#- b) (= c))