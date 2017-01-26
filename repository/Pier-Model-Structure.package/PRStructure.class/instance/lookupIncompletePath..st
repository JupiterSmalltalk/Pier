querying-path
lookupIncompletePath: aString
	"Lookup the path ==aString== as far as possible and answer an association of the last structure and the failing path element."
	
	^ PRIncompletePathLookup start: self path: aString