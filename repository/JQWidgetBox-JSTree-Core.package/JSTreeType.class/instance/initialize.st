initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	" *** Edit the following to properly initialize instance variables ***"
	name := nil.
	maxChildren := nil.
	maxDepth := nil.
	validChildren := nil.
	selectNode := nil.
	openNode := nil.
	closeNode := nil.
	createNode := nil.
	deleteNode := nil.
	" *** And replace this comment with additional initialization code *** "
	^self