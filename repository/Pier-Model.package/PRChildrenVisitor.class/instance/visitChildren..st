visiting-decoration
visitChildren: aDecoration
	(all or: [ structure = aDecoration decorated ])
		ifFalse: [ ^ self ].
	self visitAll: (sortBlock isNil 
		ifTrue: [ aDecoration children ]
		ifFalse: [ aDecoration children asSortedCollection: sortBlock ])