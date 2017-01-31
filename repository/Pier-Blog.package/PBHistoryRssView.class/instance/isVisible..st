testing
isVisible: aContext
	^ (aContext structure parents includes: self context structure) and: [ aContext isValidCommand: aContext structure viewCommandClass ]