actions
edit: aMember title: aString do: aBlock
	self isSuperuser 
		ifFalse: [ ^ nil ].
	self 
		show: (aMember asComponent
			addMessage: aString;
			addValidatedForm;
			yourself)
		onAnswer: [ :answer | 
			answer notNil
				ifTrue: [ aBlock value: answer ] ]