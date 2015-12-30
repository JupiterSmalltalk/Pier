accessing-convenience
siblings
	"Answer a collection of siblings including the current structure."

	^ self parent isNil 
		ifTrue: [ Array with: self structure ]
		ifFalse: [
			(self enumeratorFor: self parent)
				contents ]