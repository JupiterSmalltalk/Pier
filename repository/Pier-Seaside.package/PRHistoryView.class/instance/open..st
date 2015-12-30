actions
open: aContext
	(self context isValidCommand: aContext command class)
		ifFalse: [ self inform: 'Unable to open ' , aContext command label printString , ' in the current context.' ]
		ifTrue: [ self context: aContext ]