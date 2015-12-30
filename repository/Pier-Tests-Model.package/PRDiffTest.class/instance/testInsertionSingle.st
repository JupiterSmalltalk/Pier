tests
testInsertionSingle
	| diff |
	diff := PRDiffAlgorithm from: #(a c) to: #(a b c).
	self assert: diff patchset =  #((= a) (+ b) (= c))