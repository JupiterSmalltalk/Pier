validating
validateName: aString of: aChildStructure in: aStructure
	"Make sure that ==aChildStructure== with the title ==aString== can be added as child or replace an existing child in a ==aStructure==."

	| child |
	(aStructure isNil or: [ aStructure hasChildren not ])
		ifTrue: [ ^ self ].
	child := aStructure childrenDecoration
		at: aString
		ifAbsent: [ ^ self ].
	child ~= aChildStructure
		ifTrue: [ PRConflictingNameError description: self magritteDescription signal: aString printString , ' conflicts in ' , aStructure title printString ]