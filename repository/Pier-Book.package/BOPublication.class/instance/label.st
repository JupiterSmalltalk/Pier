accessing
label
	"Answer a label for the type of the receiver, like Book, Part, Chapter, Section, ..."

	^ self class typeLabels
		at: (self class typeSymbols 
			indexOf: self type)
		ifAbsent: [ String new ]