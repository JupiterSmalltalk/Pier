private
buildComponent: aContext
	^ aContext command asComponent
		onAnswer: [ :value | self onAnswerContext: aContext command: value ];
		yourself