enumerating
decorationsDo: aBlock ownerDo: anOwnerBlock
	"Evaluate ==aBlock== and ==anOwnerBlock== in the right order with each of the receiver's decorations and the receiver as the argument."

	self decorations do: [ :each |
		each priority negative
			ifTrue: [ aBlock value: each ] ].
	anOwnerBlock value: self.
	self decorations do: [ :each |
		each priority positive
			ifTrue: [ aBlock value: each ] ]