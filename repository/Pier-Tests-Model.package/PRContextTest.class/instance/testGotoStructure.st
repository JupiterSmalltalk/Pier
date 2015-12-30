tests-navigation
testGotoStructure
	| current currentStructure currentCommand next nextStructure |
	currentStructure := self context structure.
	currentCommand := self context command.
	current := self context.

	nextStructure := self context structure childrenDecoration at: 'folder'.
	next := self context structure: nextStructure.
	self deny: current = next.

	self assert: current structure = currentStructure.
	self assert: current command = currentCommand.

	self assert: next structure = nextStructure.
	self assert: next command isView