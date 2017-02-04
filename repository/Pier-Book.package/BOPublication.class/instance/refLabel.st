accessing
refLabel
	"Answer a reference label for the type of the receiver, like Book, Part, Chapter, Section, ..."

	^ self class refLabels
		at: (self class typeSymbols
			indexOf: self type)
		ifAbsent: [ String new ]