instance creation
remove: aString
	" Removes a new kernel with the name aString."
	| inst |
	inst := self instances 
		detect: [ :each | each name = aString ]
		ifNone: [ ^nil ].
	self instances remove: inst ifAbsent: [  ].
	^inst