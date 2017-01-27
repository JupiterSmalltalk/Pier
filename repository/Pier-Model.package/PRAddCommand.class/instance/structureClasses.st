private
structureClasses
	| theContext |
	theContext := self context.
	^ PRPierStructure withAllConcreteClasses select: [ :each |
		(theContext structure class canBeParentOf: each)
			and: [ each canBeChildOf: theContext structure class ] ]