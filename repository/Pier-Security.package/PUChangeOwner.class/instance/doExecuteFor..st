events
doExecuteFor: aStructure
	self owner notNil
		ifTrue: [ aStructure securityDecoration owner: self owner ].
	super doExecuteFor: aStructure