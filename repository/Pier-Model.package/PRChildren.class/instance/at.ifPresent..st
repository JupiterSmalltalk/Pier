accessing-children
at: aString ifPresent: aBlock
	^ aBlock value: (self at: aString ifAbsent: [ ^ nil ])