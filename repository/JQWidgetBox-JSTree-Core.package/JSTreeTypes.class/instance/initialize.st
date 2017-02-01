initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	maxDepth:= -2.
	maxChildren := -2.
	validChildrenTypes := OrderedCollection new.
	types := Dictionary new.

	

	^self