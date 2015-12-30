visiting-structure
visitStructure: aStructure
	(with or: [ structure ~= aStructure ])
		ifTrue: [ block value: aStructure ]