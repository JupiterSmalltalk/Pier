accessing
context
	"Answer the current context of Pier, initialize with a default context if nil."

	^ context ifNil: [ context := PRContext kernel: self kernel ]