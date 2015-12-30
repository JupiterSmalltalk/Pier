tests-specialized
testLineDiff
	| diff |
	diff := PRLineDiffAlgorithm from: 'foo
bar
zork' to: 'foo
zonk
zork'.
	self assert: diff patchset = #((= 'foo') (#- 'bar') (+ 'zonk') (= 'zork'))