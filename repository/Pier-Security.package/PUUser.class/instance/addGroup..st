utilties
addGroup: aGroup
	(self groups includes: aGroup)
		ifFalse: [ self groups add: aGroup ].
	aGroup users add: self