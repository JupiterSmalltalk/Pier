tests-mutex
testMutexSimple
	| marker |
	marker := nil.
	self mutex critical: [ marker := 1 ].
	self assert: marker = 1