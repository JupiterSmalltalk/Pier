tests-navigation
testGotoStructureCommand
	| current currentStructure currentCommand next nextStructure nextCommand |
	currentStructure := self context structure.
	currentCommand := self context command.
	current := self context.

	nextStructure := self context structure childrenDecoration at: 'folder'.
	nextCommand := nextStructure editCommandClass new.
	next := self context structure: nextStructure command: nextCommand.
	self deny: current = next.

	self assert: current structure = currentStructure.
	self assert: current command = currentCommand.

	self assert: next structure = nextStructure.
	self assert: next command = nextCommand