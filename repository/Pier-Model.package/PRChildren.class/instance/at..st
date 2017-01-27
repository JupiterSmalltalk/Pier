accessing-children
at: aString
	"Answer the child structure with the name ==aString==, raise an error if the child can't be found."

	^ self at: aString ifAbsent: [ self error: 'Child not found.' ]