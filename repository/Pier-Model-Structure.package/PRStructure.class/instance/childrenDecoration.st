decorations
childrenDecoration
	"Answer a decoration with the children of the receiver. If no children exist, an empty children decoration is added to the receiver. Don't call this method directly to avoid empty children decorations."

	^ self
		decorationOfClass: self childrenDecorationClass
		ifAbsent: [ self addDecoration: self childrenDecorationClass new ]