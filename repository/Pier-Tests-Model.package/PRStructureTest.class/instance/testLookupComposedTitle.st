tests-lookup
testLookupComposedTitle
	self assert: (self child lookupPath: '../Child/..') = self folder.
	self assert: (self child lookupPath: '../Child/../') = self folder.

	self assert: (self child lookupPath: '../Structure/..') = self folder.
	self assert: (self child lookupPath: '../Structure/../') = self folder.

	self assert: (self child lookupPath: '../Structure/../child') = self child.
	self assert: (self child lookupPath: '../structure/../Child/') = self child.

	self assert: (self child lookupPath: '../Structure/../structure') = self structure.
	self assert: (self child lookupPath: '../structure/../Structure/') = self structure