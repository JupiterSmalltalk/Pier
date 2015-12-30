accessing-dynamic
parents
	"Answer an ordered collection of all the parents of the receiver up and including the receiver."
	
	| current result |
	current := self.
	result := OrderedCollection with: self.
	[ current isRoot ]
		whileFalse: [ result addFirst: (current := current parent) ].
	^ result