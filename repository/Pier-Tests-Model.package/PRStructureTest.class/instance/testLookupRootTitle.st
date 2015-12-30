tests-lookup
testLookupRootTitle
	self assert: (self root lookupPath: '/Folder') = self folder.
	self assert: (self root lookupPath: '/Folder/Child') = self child.
	self assert: (self root lookupPath: '/Folder/Structure') = self structure.

	self assert: (self structure lookupPath: '/Folder') = self folder.
	self assert: (self structure lookupPath: '/Folder/Child') = self child.
	self assert: (self structure lookupPath: '/Folder/Structure') = self structure