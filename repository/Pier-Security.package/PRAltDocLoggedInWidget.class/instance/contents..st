accessing - properties
contents: aString
	"Write the document using the description."
	self write: (aString
		ifNil: [ nil ]
		ifNotNil: [ self descriptionDefault fromString: aString ]) using: self descriptionDefault