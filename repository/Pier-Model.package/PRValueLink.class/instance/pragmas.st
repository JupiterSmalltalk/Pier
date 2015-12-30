querying
pragmas
	"Answer the method annotations of all currently supported value-links."
	
	^ Pragma allNamed: #value:comment: from: self class to: PRValueLink sortedByArgument: 1