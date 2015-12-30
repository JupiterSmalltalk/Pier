tests-copying
testCopyDecorations
	| decoration copiedInstance copiedDecoration |
	decoration := self instance addDecoration: (self decorationWithPriority: SmallInteger minVal).
	copiedInstance := self instance copy.
	copiedDecoration := copiedInstance decorations first.

	self deny: self instance == copiedInstance.
	self deny: decoration == copiedDecoration.

	self assert: self instance decorations first = decoration.
	self assert: self instance = decoration decorated.

	self assert: copiedInstance decorations first = copiedDecoration.
	self assert: copiedInstance = copiedDecoration decorated