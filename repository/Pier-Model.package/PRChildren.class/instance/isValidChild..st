testing
isValidChild: aStructure
	^ (PRPath isValidName: aStructure name)
		and: [ aStructure parent isNil
		and: [ (self includes: aStructure name) not
		and: [ (self decorated canBeParentOf: aStructure)
		and: [ (aStructure canBeChildOf: self decorated) ] ] ] ]