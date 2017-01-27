accessing-answering
cancelAnswer
	"Return a new context that should be activated after canceling this action. Since the answer might get modified afterwards, this should always be a copy."

	^ cancelAnswer isNil
		ifFalse: [ cancelAnswer copy ]
		ifTrue: [ self defaultCancelAnswer ]