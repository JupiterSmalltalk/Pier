accessing
fields
	"Answer a dictionary mapping descriptions to their respective data fields."
	
	^ fields ifNil: [ fields := Dictionary new ]