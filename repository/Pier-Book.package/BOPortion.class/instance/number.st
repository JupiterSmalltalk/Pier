accessing
number
	"Answer the composed numbers."

	| root parents |
	self isParagraph
		ifTrue: [ ^ nil ].
	self isPart
		ifTrue: [ ^ self arabicToRoman: (self index ifNil: [ ^ nil ]) ].
	root := self 
		findAncestor: [ :each | each isPublication and: [ each isBook or: [ each isPart ] ] ]
		ifAbsent: [ ^ nil ].
	parents := (((self parents 
		copyAfter: root)
		collect: [ :each | each index ])
		reject: [ :each | each isNil ])
		collect: [ :each | each greaseString ].
	^ parents isEmpty
		ifFalse: [ parents reduce: [ :a :b | a , '.' , b ] ]