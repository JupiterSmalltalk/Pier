navigation
structure: aStructure command: aCommand
	"Create a copy of the current context with the current structure replaced by ==aStructure== and the current command by ==aCommand==."

	^ self copy
		setStructure: aStructure;
		setCommand: aCommand;
		yourself