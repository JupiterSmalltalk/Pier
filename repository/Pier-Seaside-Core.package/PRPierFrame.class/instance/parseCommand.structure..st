processing
parseCommand: aRequest structure: aStructure
	| commandClass |
	commandClass := self class 
		classFromRequest: aRequest 
		name: 'command'
		base: PRCommand.
	(commandClass isNil or: [ commandClass isAbstract ])
		ifTrue: [ commandClass := aStructure defaultCommandClass ].
	^ commandClass new