events
doValidate
	"The order command needs to make sure that we don't loose added and that we don't reintroduce deleted structures. This code ensures that new structures are just a permutation of the existing ones."
	
	| prev next |
	super doValidate.
	prev := self currentStructures.
	next := structures copy.
	prev do: [ :each |
		(next includes: each)
			ifFalse: [ structures := structures copyWith: each ] ].
	next do: [ :each |
		(prev includes: each)
			ifFalse: [ structures := structures copyWithout: each ] ]