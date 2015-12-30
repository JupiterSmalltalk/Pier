accessing - properties
alternateContents: aString
	"Write the document using the description."
	
	self write: (aString
		ifNil: [ nil ]
		ifNotNil: [ self descriptionAlternate fromString: aString ]) using: self descriptionAlternate