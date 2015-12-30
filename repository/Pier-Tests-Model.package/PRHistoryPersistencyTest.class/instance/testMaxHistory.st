tests
testMaxHistory
	| command |
	self persistency maxHistory: 5.
	10 timesRepeat: [ 
		self persistency 
			execute: (command := self editTitle: 'Foo').
		self assert: self persistency history size <= 5 ].
	self assert: self persistency history size = 5