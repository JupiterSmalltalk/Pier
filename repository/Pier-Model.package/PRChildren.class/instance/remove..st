actions
remove: aStructure
	"Remove ==aStructure== from the receiver."

	| index |
	index := children 
		indexOf: aStructure 
		ifAbsent: [ ^ nil ].
	children := (children copyFrom: 1 to: index - 1) , 
		(children copyFrom: index + 1 to: children size).
	self triggerStructureRemoved: aStructure.
	self isEmpty
		ifTrue: [ self remove ].
	^ aStructure
		parent: nil;
		yourself