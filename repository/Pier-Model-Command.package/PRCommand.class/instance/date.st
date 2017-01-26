accessing-readonly
date
	"Answer the date when the command was executed."

	^ self timestamp isNil ifFalse: [ self timestamp asDate ]