private
childrenOf: aStructure
	^ (self context enumeratorFor: aStructure) reject: [ :each | self isFiltered: each ]