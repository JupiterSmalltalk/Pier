actions
execute: anEditCommand
	| addCommand |
	note := component := command := nil.
	anEditCommand ifNil: [ ^ self ].
	addCommand := PRAddCommand new.
	self context command: addCommand.
	addCommand
		name: (addCommand
			uniqueName: 'note'
			in: self context structure);
		type: BONote;
		beUnchecked;
		execute.
	self context
		structure: addCommand successAnswer structure
		command: anEditCommand.
	anEditCommand
		beUnchecked;
		execute