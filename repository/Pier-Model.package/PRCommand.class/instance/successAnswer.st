accessing-answering
successAnswer
	"Return a new context that should be activated after successfully executing this action. Since the answer might get modified afterwards, this should always be a copy."
	
	^ successAnswer isNil
		ifFalse: [ successAnswer copy ]
		ifTrue: [ self defaultSuccessAnswer ]