querying-path
lookupPath: aString ifAbsent: aBlock
	"Lookup the path ==aString== starting at the receiver, evaluate ==aBlock== in case of an error."
	
	^ PRPathLookup start: self path: aString ifAbsent: aBlock