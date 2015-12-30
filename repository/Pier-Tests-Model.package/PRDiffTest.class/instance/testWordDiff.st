tests-specialized
testWordDiff
	| diff |
	diff := PRWordDiffAlgorithm from: 'foo bar zork' to: 'foo zonk zork'.
	self assert: diff patchset = #((= 'foo') (#- 'bar') (+ 'zonk') (= 'zork'))