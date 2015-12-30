accessing
unfilteredItems
	| structure children |
	structure :=  self context structure.
	self level isNil ifFalse: [
		^ self childrenOf: (structure parents
			at: self level
			ifAbsent: [ ^ #() ]) ].
	children := self childrenOf: structure.
	^ (children isEmpty and: [ structure isRoot not ])
		ifTrue: [ self childrenOf: structure parent ]
		ifFalse: [ children ]