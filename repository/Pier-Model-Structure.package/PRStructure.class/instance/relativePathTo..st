querying-path
relativePathTo: aStructure
	"Answer a relative path from the receiver to ==aStructure==."
	
	^ PRPathReference from: self to: aStructure