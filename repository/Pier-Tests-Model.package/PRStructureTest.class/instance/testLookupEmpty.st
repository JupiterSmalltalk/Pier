tests-lookup
testLookupEmpty
	self assert: (self root lookupPath: '') = self root.
	self assert: (self folder lookupPath: '') = self folder.
	self assert: (self child lookupPath: '') = self child.
	self assert: (self structure lookupPath: '') = self structure