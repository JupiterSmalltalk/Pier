accessing
index
	"Answer the index number of this publication, for example the chapter or section number."
	
	| enumerator siblings |
	self parent ifNil: [ ^ nil ].
	enumerator := self isChapter
		ifFalse: [ self parent enumerator ]
		ifTrue: [
			| root |
			root := self
				findAncestor: [ :each | each isPublication and: [ each isBook ] ]
				ifAbsent: [ ^ nil ].
			root enumerator everything ].
	siblings := enumerator select: [ :each | 
		each isPublication 
			and: [ each isNumberedTitle
			and: [ each type = self type ] ] ].
	^ siblings indexOf: self ifAbsent: [ nil ]