tests
testInsertionMany
	| diff |
	diff := PRDiffAlgorithm from: #() to: #(a b c).
	self assert: diff patchset =  #((+ a) (+ b) (+ c))