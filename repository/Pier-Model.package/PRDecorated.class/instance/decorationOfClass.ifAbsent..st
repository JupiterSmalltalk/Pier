querying
decorationOfClass: aClass ifAbsent: aBlock
	"Answer the first decoration of ==aClass==, evaluate ==aBlock== if none could be found."

	^ self decorations
		detect: [ :each | aClass = each species ]
		ifNone: aBlock