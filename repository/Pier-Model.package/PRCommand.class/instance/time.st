accessing-readonly
time
	"Answer the date when the command was executed."

	^ self timestamp isNil ifFalse: [ self timestamp asTime ]