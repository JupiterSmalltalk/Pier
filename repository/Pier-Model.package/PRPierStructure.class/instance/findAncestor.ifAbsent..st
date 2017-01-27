querying
findAncestor: aConditionBlock ifAbsent: anAbsentBlock
	"Find the first structure starting at the receiver going up the parent chain, that satisfies the condition in aConditionBlock. Evaluate anAbsentBlock, if not present."
	
	| current |
	current := self.
	[ (aConditionBlock value: current)
		ifTrue: [ ^ current ].
	  (current := current parent) isNil ]
			whileFalse.
	^ anAbsentBlock value