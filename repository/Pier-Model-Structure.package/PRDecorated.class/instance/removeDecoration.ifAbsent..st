removing
removeDecoration: aDecoration ifAbsent: aBlock
	"Remove ==aDecoration== from the receiver, ==aBlock== is evaluated if ==aDecoration== is not part of the receiver."

	| decoration |
	decoration := self decorations
		detect: [ :each | aDecoration = each ]
		ifNone: [ ^ aBlock value ].
	self setDecorations: (self decorations
		copyWithout: (decoration
			setDecorated: nil;
			yourself)).
	^ decoration