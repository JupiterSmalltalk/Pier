utilities
enumerator: aVisitor gives: aCollection 
	| children |
	children := aVisitor collect: [ :each | each name ].
	self 
		assert: children = aCollection
		description: children greaseString , ' should be ' , aCollection greaseString
		resumable: true