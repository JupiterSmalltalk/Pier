private
retrieveStructureFrom: aJSTreeNode 
	| absolutePath path |
	absolutePath := aJSTreeNode metadata at: 'absolutePath'.
	path := self root lookupPath: absolutePath ifAbsent: [ self error: 'cannot retrieve structure for path: "', absolutePath,  '"' ].
	^ path