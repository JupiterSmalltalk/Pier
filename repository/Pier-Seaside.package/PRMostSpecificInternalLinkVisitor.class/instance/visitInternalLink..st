visiting
visitInternalLink: anObject
	| context structure targetStructure |
	context := PRCurrentContext value.
	structure := context structure.
	targetStructure := anObject target.
	((structure parents includes: targetStructure) 
		and: [ target isNil or: [ targetStructure parents includes: target ] ])
			ifTrue: [ target := targetStructure ]