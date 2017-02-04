queries
structureLabelFor: aStructure with: aString
	| parents |
	parents := aStructure parents asOrderedCollection.
	[ parents isEmpty or: [ parents first isPublication ] ]
		whileFalse: [ parents removeFirst ].
	parents := parents 
		collect: [ :each | self stringLabelFor: each name ].
	aString isNil
		ifFalse: [ parents addLast: (self stringLabelFor: aString) ].
	^ parents isEmpty
		ifFalse: [ parents reduce: [ :a :b | a , ':' , b ] ]