utilities
remove
	self decorated notNil
		ifFalse: [ ^ self ].
	self decorated
		removeDecoration: self
		ifAbsent: [ ]