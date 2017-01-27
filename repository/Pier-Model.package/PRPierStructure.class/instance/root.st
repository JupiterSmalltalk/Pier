accessing-dynamic
root
	"Answer the root structure of the receiver."
	
	| current |
	current := self.
	[ current isRoot ]
		whileFalse: [ current := current parent ].
	^ current