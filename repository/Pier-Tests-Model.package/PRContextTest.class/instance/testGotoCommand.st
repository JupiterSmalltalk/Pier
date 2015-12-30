tests-navigation
testGotoCommand
	| current currentStructure currentCommand next nextCommand |
	currentStructure := self context structure.
	currentCommand := self context command.
	current := self context.

	nextCommand := self context structure editCommandClass new.
	next := self context command: nextCommand.
	self deny: current = next.

	self assert: current structure = currentStructure.
	self assert: current command = currentCommand.

	self assert: next structure = currentStructure.
	self assert: next command = nextCommand