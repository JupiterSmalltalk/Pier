private
execute: anEditCommand
	| addCommand |
	comment := component := command := nil.
	anEditCommand ifNil: [ ^ self ].
	addCommand := PRAddCommand new.
	self context command: addCommand.
	addCommand
		name: (addCommand
			uniqueName: 'comment'
			in: self context structure);
		type: PBComment;
		beUnchecked;
		execute.
	self context
		structure: addCommand successAnswer structure
		command: anEditCommand.
	anEditCommand
		beUnchecked;
		execute