testing
isAncestorOf: aStructure
	"Answer ==true== if the receiver is an ancestor of ==aStructure==."

	^ aStructure parents includes: self