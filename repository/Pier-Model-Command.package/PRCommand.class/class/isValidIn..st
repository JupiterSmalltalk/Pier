testing
isValidIn: aContext
	"Verify that a command as a meaning for the context aContext. Override this command to add new constraints that are static to the command."

	^ aContext structure isValidCommand: self in: aContext