model
write: anObject to: aModel
	super write: anObject to: aModel.
	anObject isNil
		ifFalse: [ anObject owner: aModel ]