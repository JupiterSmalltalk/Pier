tests
testEqualityMany
	| diff |
	diff := PRDiffAlgorithm from: #(a b c) to: #(a b c).
	self assert: diff patchset =  #((= a) (= b) (= c))