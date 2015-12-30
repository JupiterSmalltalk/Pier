tests-lookup
testLookupErrorIfAbsent
	self assert: (self root lookupPath: 'unknown' ifAbsent: [ self structure ]) = self structure.
	self assert: (self root lookupPath: 'unknown/' ifAbsent: [ self structure ]) = self structure.

	self assert: (self root lookupPath: 'zork' ifAbsent: [ self structure ]) = self structure.
	self assert: (self root lookupPath: 'zork/' ifAbsent: [ self structure ]) = self structure.

	self assert: (self root lookupPath: 'folder/unknown' ifAbsent: [ self structure ]) = self structure.
	self assert: (self root lookupPath: 'folder/unknown/' ifAbsent: [ self structure ]) = self structure.

	self assert: (self root lookupPath: 'folder/unknown/unknown' ifAbsent: [ self structure ]) = self structure.
	self assert: (self root lookupPath: 'folder/unknown/unknown/' ifAbsent: [ self structure ]) = self structure.

	self assert: (self root lookupPath: 'folder/instance/unknown' ifAbsent: [ self structure ]) = self structure.
	self assert: (self root lookupPath: 'folder/instance/unknown/' ifAbsent: [ self structure ]) = self structure