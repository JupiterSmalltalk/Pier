private
uniqueName: aString in: aStructure
	"Answer an unique structure name with the prefix aString within the parent aStructure."

	| index name |
	(aStructure isNil or: [ aStructure hasChildren not ])
		ifTrue: [ ^ aString ].
	(aStructure childrenDecoration includes: aString)
		ifFalse: [ ^ aString ].
	index := 1.
	[ aStructure childrenDecoration includes: (name := aString , '-' , (index := index + 1) greaseString) ] 
		whileTrue.
	^ name