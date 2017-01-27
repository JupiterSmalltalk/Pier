initialization
initialize
	super initialize.
	continue := [ :each | each isEmbedded and: [ each isBroken not ] ]