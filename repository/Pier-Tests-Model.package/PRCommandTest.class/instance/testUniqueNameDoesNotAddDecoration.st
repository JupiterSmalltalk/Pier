tests-utilities
testUniqueNameDoesNotAddDecoration
	self command uniqueName: 'foo' in: self structure.
	self structure
		decorationOfClass: self structure childrenDecorationClass
		ifAbsent: [ ^ self ].
	self assert: self structure hasChildren