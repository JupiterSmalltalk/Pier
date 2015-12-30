tests-lookup
testLookupParent
	self assert: (self root lookupPath: '..') = self root.
	self assert: (self root lookupPath: '../') = self root.

	self assert: (self folder lookupPath: '..') = self root.
	self assert: (self folder lookupPath: '../') = self root.

	self assert: (self child lookupPath: '..') = self folder.
	self assert: (self child lookupPath: '../') = self folder.

	self assert: (self structure lookupPath: '..') = self folder.
	self assert: (self structure lookupPath: '../') = self folder