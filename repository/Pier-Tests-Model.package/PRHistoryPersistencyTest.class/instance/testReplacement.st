tests
testReplacement
	| command1 command2 |
	self persistency
		execute: (command1 := self editTitle: '1');
		execute: (command2 := self editTitle: '2').
	self assert: self persistency history size = 2.
	self deny: self persistency history first command = command1.
	self assert: self persistency history first command class = command1 class.
	self deny: self persistency history second command = command2.
	self assert: self persistency history second command class = command2 class.
	
	self kernel persistency: self persistencyInstance.
	self assert: self persistency history size = 2.
	self deny: self persistency history first command = command1.
	self assert: self persistency history first command class = command1 class.
	self deny: self persistency history second command = command2.
	self assert: self persistency history second command class = command2 class.
	
	self kernel persistency: nil.
	self assert: self persistency history isEmpty.
	
	self kernel persistency: self persistencyInstance.
	self assert: self persistency history isEmpty