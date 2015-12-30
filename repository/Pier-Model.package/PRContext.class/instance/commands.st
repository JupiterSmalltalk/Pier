accessing-convenience
commands
	"Answer a list of possible commands, dispatching through the command class."

	^ PRCommand withAllConcreteClasses
		select: [ :each | each isValidIn: self ]