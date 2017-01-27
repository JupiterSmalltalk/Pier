events
onAnswerContext: aContext command: aCommand
	aCommand isNil
		ifTrue: [ ^ self context: aContext command cancelAnswer ].
	[ aCommand execute ]
		on: MAError
		do: [ :err | ^ self component errors add: err ].
	self context: aCommand successAnswer