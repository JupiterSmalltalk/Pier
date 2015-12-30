tests
testCopy
	| copy |
	copy := self context copy.
	self assert: self context command context == self context.
	self assert: copy command context == copy