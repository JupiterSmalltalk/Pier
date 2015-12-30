tests-lookup
testLookupError
	self assert: (self root lookupPath: 'unknown') isNil.
	self assert: (self root lookupPath: 'unknown/') isNil.

	self assert: (self root lookupPath: 'zork') isNil.
	self assert: (self root lookupPath: 'zork/') isNil.

	self assert: (self root lookupPath: 'folder/unknown') isNil.
	self assert: (self root lookupPath: 'folder/unknown/') isNil.

	self assert: (self root lookupPath: 'folder/unknown/unknown') isNil.
	self assert: (self root lookupPath: 'folder/unknown/unknown/') isNil.

	self assert: (self root lookupPath: 'folder/instance/unknown') isNil.
	self assert: (self root lookupPath: 'folder/instance/unknown/') isNil