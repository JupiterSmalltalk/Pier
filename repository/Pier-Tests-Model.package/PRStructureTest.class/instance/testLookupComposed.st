tests-lookup
testLookupComposed
	self assert: (self child lookupPath: '../child/..') = self folder.
	self assert: (self child lookupPath: '../child/../') = self folder.

	self assert: (self child lookupPath: '../structure/..') = self folder.
	self assert: (self child lookupPath: '../structure/../') = self folder.

	self assert: (self child lookupPath: '../structure/../child') = self child.
	self assert: (self child lookupPath: '../structure/../child/') = self child.

	self assert: (self child lookupPath: '../structure/../structure') = self structure.
	self assert: (self child lookupPath: '../structure/../structure/') = self structure