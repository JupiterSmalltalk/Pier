enumerating
do: aBlock separatedBy: aSeparatorBlock
	"Evaluate aBlock for every structure visited by the receiver, and evaluate aSeparatorBlock between."

	| first |
	first := true.
	self do: [ :each |
		first
			ifTrue: [ first := false ]
			ifFalse: [ aSeparatorBlock value ].
		aBlock value: each ]