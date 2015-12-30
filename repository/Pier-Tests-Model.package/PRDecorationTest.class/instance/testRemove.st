tests-utilities
testRemove
	self decoration remove.
	self assert: self decoration decorated isNil.
	self decorated
		decorationOfClass: self actualClass
		ifAbsent: [ ^ self ].
	self assert: false