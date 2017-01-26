actions
remove: aMember do: aBlock
	self isSuperuser 
		ifFalse: [ ^ nil ].
	self
		show: (WAYesOrNoDialog new
			addMessage: 'Are you sure to remove ' , aMember name printString , '?';
			yourself)
		onAnswer: [ :answer |
			answer ifTrue: [
				self members remove: aMember.
				self refresh.
				aBlock value: aMember ] ]