tests-lookup
testLookupRelativeTitle
	self assert: (self structure lookupPath: '../Structure') = self structure.
	self assert: (self structure lookupPath: '../Structure/') = self structure.

	self assert: (self structure lookupPath: '../../Folder') = self folder.
	self assert: (self structure lookupPath: '../../Folder/') = self folder.

	self assert: (self structure lookupPath: '../../Folder/Structure') = self structure.
	self assert: (self structure lookupPath: '../../Folder/Structure/') = self structure