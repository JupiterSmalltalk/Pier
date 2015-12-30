querying
selectorFor: aString
	"Answer the method selector for the given value link ==aString==, of nil if not found."

	self pragmas do: [ :pragma | 
		pragma arguments first = aString
			ifTrue: [ ^ pragma selector ] ].
	^ nil