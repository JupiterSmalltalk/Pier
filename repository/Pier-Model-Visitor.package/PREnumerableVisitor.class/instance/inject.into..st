enumerating
inject: anObject into: aBlock
	"Accumulate a running value associated with evaluating the argument aBlock with the current value of the argument anObject and the receiver as block arguments."

	| next |
	next := anObject.
	self do: [ :each | next := aBlock value: next value: each ].
	^ next