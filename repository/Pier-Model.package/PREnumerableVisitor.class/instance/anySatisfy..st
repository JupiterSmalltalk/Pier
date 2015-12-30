enumerating
anySatisfy: aBlock
	"Evaluate aBlock for every structure visited by the receiver. If aBlock returns true for any element return true. Otherwise return false."

	self do: [ :each | 
		(aBlock value: each)
			ifTrue: [ ^ true ] ].
	^ false