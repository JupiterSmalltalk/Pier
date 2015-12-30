tests-conveniance
testCommands
	self assert: (self context commands notEmpty).
	self assert: (self context commands includes: PRViewCommand).
	self assert: (self context commands includes: PRRemoveCommand) not.
	
	context := self context structure: (self context structure childrenDecoration at: 'folder').
	self assert: (self context commands notEmpty).
	self assert: (self context commands includes: PRViewCommand).
	self assert: (self context commands includes: PRRemoveCommand)
