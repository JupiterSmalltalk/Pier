querying-path
lookupPath: aString
	"Lookup the path ==aString== starting at the receiver, answer ==nil== in case the structure can't be found."
	
	^ self lookupPath: aString ifAbsent: [ nil ]