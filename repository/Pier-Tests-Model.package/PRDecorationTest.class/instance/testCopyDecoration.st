tests-copying
testCopyDecoration
	| decorationCopy |
	decorationCopy := self decoration copy.

	self deny: self decoration == decorationCopy.
	self assert: self decoration = decorationCopy.
	self assert: self decoration decorated = self decorated.
	self assert: decorationCopy decorated isNil