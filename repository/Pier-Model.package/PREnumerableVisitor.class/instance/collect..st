enumerating
collect: aBlock
	"Evaluate aBlock for every structure visited by the receiver and answer a collection of the results."

	^ Array streamContents: [ :stream |
		self do: [ :each |
			stream nextPut: (aBlock value: each) ] ]