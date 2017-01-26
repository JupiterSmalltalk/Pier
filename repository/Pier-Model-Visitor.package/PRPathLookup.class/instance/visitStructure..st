visiting-structure
visitStructure: aStructure
	self stream atEnd
		ifTrue: [ self escape: aStructure ].
	self pathElement: self readNext.
	self pathElement = self class currentStructure
		ifTrue: [ ^ self visit: aStructure ].
	self pathElement = self class parentStructure
		ifTrue: [
			^ self visit: (aStructure isRoot
				ifTrue: [ aStructure ]
				ifFalse: [ aStructure parent ]) ].
	aStructure hasChildren
		ifFalse: [ self childNotFound: aStructure ]