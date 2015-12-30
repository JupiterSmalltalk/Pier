tests-mutex
testMutexError
	"An error inside the critical section should properly unlock it for others to enter."

	| marker |
	marker := nil.
	self
		should: [ self mutex critical: [ 1 / 0 ] ]
		raise: ZeroDivide.

	self mutex critical: [ marker := 1 ].
	self assert: marker = 1