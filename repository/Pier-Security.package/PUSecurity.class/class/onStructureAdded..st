events
onStructureAdded: aStructure 
	| decoration context user |
	decoration := aStructure isRoot 
		ifTrue: [ aStructure securityDecorationClass new ]
		ifFalse: [ aStructure parent securityDecoration copy ].
	(context := PRCurrentContext value) isNil ifFalse: [
		(user := context user) isNil ifFalse: [
			decoration owner: user.
			decoration group ifNil: [ decoration group: user group ] ] ].
	^ aStructure 
		addDecoration: decoration
		ifPresent: [ :value | value ]