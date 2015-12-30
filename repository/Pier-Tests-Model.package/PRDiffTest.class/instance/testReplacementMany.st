tests
testReplacementMany
	| diff |
	diff := PRDiffAlgorithm from: #(x y z) to: #(a b c).
	self assert: diff patchset =  #((#- x) (#- y) (#- z) (+ a) (+ b) (+ c))