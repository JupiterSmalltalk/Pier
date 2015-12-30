accessing-children
at: aString ifAbsent: aBlock
	"Answer the child structure with the name ==aString==, evaluate ==aBlock== if the child can't be found."

	^ children
		detect: [ :each | each name = aString ]
		ifNone: aBlock