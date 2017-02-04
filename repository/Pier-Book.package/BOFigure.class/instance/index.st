accessing
index
	"Answer the index number of this figure."

	| root siblings |
	self parent isNil
		ifTrue: [ ^ nil ].
	root := self parent
		findAncestor: [ :each | each isPublication and: [ each isBook ] ]
		ifAbsent: [ ^ nil ].
	siblings := root enumerator everything
		select: [ :each | each isFigure ].
	^ siblings indexOf: self ifAbsent: [ nil ]