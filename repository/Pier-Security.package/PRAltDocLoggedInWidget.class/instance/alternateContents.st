accessing - properties
alternateContents
	"Answer a wiki string representation of the receiving document."
	
	^ self descriptionAlternate toString: (self readUsing: self descriptionAlternate)