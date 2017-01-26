testing
isValidIn: aContext
	^ (super isValidIn: aContext) and: [ aContext structure hasChildren ]