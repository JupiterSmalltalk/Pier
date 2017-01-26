accessing-dynamic
contents
	"Answer a wiki string representation of the receiving document."
	
	^ self descriptionDocument toString: (self readUsing: self descriptionDocument)