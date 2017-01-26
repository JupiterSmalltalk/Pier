adding
addDecoration: aDecoration ifPresent: aBlock
	"Add ==aDecoration== to the receiver. This message ensures that the decorations remain properly sorted and that there are no duplicates. In case ==aDecoration== is already within the receiver, the existing decoration is passed into ==aBlock==."

	| decoration |
	decoration := self decorations
		detect: [ :each | aDecoration = each ]
		ifNone: [ nil ].
	^ decoration isNil
		ifFalse: [ aBlock value: decoration ]
		ifTrue: [
			self setDecorations: ((decorations
				copyWith: (aDecoration
					setDecorated: self;
					yourself)) sort; yourself).
			aDecoration ]