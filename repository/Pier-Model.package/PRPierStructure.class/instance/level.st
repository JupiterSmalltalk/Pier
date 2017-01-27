accessing-dynamic
level
	"Answer the nesting level of the receiver, the root has a level of 1."

	| level current |
	level := 1.
	current := self.
	[ current isRoot ] whileFalse: [ 
		level := level + 1.
		current := current parent ].
	^ level