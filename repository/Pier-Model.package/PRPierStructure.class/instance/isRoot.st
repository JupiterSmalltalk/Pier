testing
isRoot
	"Answer ==true== if the receiver is the root of the Pier model. This is the negation of ==#hasParent==."

	^ self parent isNil