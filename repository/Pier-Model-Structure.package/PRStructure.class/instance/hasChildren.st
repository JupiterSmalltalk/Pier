testing
hasChildren
	"Answer ==true== if the receiver has got children, they might not be visible however."

	self enumerator 
		do: [ :each | ^ true ].
	^ false