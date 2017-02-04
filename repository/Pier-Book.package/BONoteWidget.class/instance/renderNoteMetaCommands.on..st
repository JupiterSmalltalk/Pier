rendering-listing
renderNoteMetaCommands: aNote on: html
	| commands contexts |
	commands := Array with: PREditCommand with: PRMoveCommand with: PRRemoveCommand.
	contexts := (commands
		collect: [ :class | self context structure: aNote command: class new ])
		select: [ :each | each isValid ].
	contexts isEmpty ifTrue: [ ^ self ].
	html span class: 'commands'; with: [
		contexts
			do: [ :each | html anchor goto: each; with: each command label ]
			separatedBy: [ html text: ', ' ] ].
	html text: ' '