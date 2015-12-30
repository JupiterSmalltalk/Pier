tests-copying
testCopyDecorated
	| ownerCopy decorationCopy |
	ownerCopy := self decorated copy.
	decorationCopy := ownerCopy decorations first.

	self deny: self decorated == ownerCopy.
	self deny: self decorated == decorationCopy.

	self assert: self decorated decorations size = 1.
	self assert: self decorated decorations first = self decoration.
	self assert: self decorated = self decoration decorated.

	self assert: ownerCopy decorations size = 1.
	self assert: ownerCopy decorations first = decorationCopy.
	self assert: ownerCopy = decorationCopy decorated