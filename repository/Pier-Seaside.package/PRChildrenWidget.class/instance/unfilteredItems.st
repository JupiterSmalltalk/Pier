accessing
unfilteredItems
	| structure children |
	structure :=  self context structure.
	children := self childrenOf: structure.
	^ (children isEmpty and: [ structure isRoot not ])
		ifTrue: [ self childrenOf: structure parent ]
		ifFalse: [ children ]