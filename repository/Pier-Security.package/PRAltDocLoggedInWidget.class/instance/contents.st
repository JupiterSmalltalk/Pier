accessing - properties
contents
	"Answer a wiki string representation of the receiving document."
	
	^ self descriptionDefault toString: (self readUsing: self descriptionDefault)