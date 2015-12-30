utilties
removeGroup: aGroup
	self groups remove: aGroup.
	aGroup users remove: self