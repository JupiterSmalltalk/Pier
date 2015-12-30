validating
validateNestingOf: aChildStructure in: aStructure
	"Make sure that ==aChildStructure== can be added as child to ==aStructure== and that ==aStructure== can have ==aChildStructure== as a child."

	aStructure isNil
		ifTrue: [ ^ self ].
	((aStructure canBeParentOf: aChildStructure)
		and: [ aChildStructure canBeChildOf: aStructure ])
			ifTrue: [ ^ self ].
	PRInvalidNestingError
		description: self magritteDescription
		signal: aChildStructure title printString , ' can not be a child of ' , aStructure title printString