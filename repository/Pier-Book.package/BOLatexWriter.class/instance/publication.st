queries
publication
	^ self 
		findItem: [ :each | (each isKindOf: PRStructure) and: [ each isPublication ] ]
		ifAbsent: [ ^ self ].