action
repair
	self target isInternal
		ifTrue: [ self repairInternal ].
	self target isExternal
		ifTrue: [ self repairExternal ]