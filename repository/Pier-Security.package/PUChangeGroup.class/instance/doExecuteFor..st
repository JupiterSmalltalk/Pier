events
doExecuteFor: aStructure
	self group notNil
		ifTrue: [ aStructure securityDecoration group: self group ].
	super doExecuteFor: aStructure