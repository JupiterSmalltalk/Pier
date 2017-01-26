testing
validateCommand: aCommand
 	"Validates ==Command== to be executed within the context of the receiver. Throw an exception if there is something wrong with the command."

	self decorations do: [ :each | each validateCommand: aCommand ]