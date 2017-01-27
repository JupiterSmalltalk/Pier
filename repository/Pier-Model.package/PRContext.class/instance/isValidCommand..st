testing
isValidCommand: aCommandClass
	"Answer ==true== if the receiver is a valid context with the current command replaced by ==aCommandClass==."

	^ aCommandClass isValidIn: self