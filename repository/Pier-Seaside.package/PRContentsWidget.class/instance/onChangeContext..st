events
onChangeContext: aContext
	super onChangeContext: aContext.
	aContext command isQuick
		ifTrue: [ self onAnswerContext: aContext command: aContext command ]
		ifFalse: [ self component: (self buildComponent: aContext) ]