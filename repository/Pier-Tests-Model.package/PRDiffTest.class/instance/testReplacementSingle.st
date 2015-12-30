tests
testReplacementSingle
	| diff  |
	diff := PRDiffAlgorithm from: #(a x c) to: #(a b c).
	self assert: diff patchset =  #((= a) (#- x) (+ b) (= c))