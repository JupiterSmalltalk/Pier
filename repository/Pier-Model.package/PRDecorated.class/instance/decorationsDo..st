enumerating
decorationsDo: aBlock
	"Evaluate ==aBlock== in the right order with each of the receiver's decorations as the argument."

	self decorations do: aBlock