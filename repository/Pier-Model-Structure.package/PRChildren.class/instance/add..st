actions
add: aStructure
	"Add ==aStructure== as a child to the receiver."
	
	(self isValidChild: aStructure)
		ifFalse: [ self error: aStructure title , ' is an invalid child in ' , self decorated title , '.' ].
	children := children 
		copyWith: (aStructure
			parent: self decorated;
			yourself).
	self triggerStructureAdded: aStructure.
	^ aStructure