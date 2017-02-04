accessing
parent: aStructure
	"This is pretty ugly code that ensures a consistent labeling of book, part, chapter, section, subsection, subsubsection and paragraph. It is complicated because parts are optional. If this overflows just make a paragraph out of everything."

	super parent: aStructure.
	self parent ifNil: [ ^ self ].
	self type: (self parent isBook
		ifTrue: [
			(self isPart or: [ self isChapter ])
				ifTrue: [ ^ self ]
				ifFalse: [ #chapter ] ]
		ifFalse: [
			self class typeSymbols
				at: (self class typeSymbols 
					indexOf: self parent type
					ifAbsent: [ ^ self error: 'Interal Error' ]) + 1
				ifAbsent: [ self class typeSymbols last ] ])