tests-lookup
testLookupRelative
	self assert: (self structure lookupPath: '../structure') = self structure.
	self assert: (self structure lookupPath: '../structure/') = self structure.

	self assert: (self structure lookupPath: '../../folder') = self folder.
	self assert: (self structure lookupPath: '../../folder/') = self folder.

	self assert: (self structure lookupPath: '../../folder/structure') = self structure.
	self assert: (self structure lookupPath: '../../folder/structure/') = self structure