tests-lookup
testLookupRoot
	self assert: (self root lookupPath: '/') = self root.
	self assert: (self root lookupPath: '/folder') = self folder.
	self assert: (self root lookupPath: '/folder/child') = self child.
	self assert: (self root lookupPath: '/folder/structure') = self structure.

	self assert: (self structure lookupPath: '/') = self root.
	self assert: (self structure lookupPath: '/folder') = self folder.
	self assert: (self structure lookupPath: '/folder/child') = self child.
	self assert: (self structure lookupPath: '/folder/structure') = self structure