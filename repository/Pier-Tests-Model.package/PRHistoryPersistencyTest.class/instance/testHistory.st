tests
testHistory
	| command |
	command := self editTitle: 'Foo'.
	self assert: self persistency history isEmpty.
	self persistency execute: command.
	self assert: self persistency history size = 1.
	self deny: self persistency history first = command context.
	self assert: self persistency history first structure = command context structure