tests-lookup
testLookupParentParent
	self assert: (self root lookupPath: '../..') = self root.
	self assert: (self root lookupPath: '../../') = self root.

	self assert: (self folder lookupPath: '../..') = self root.
	self assert: (self folder lookupPath: '../../') = self root.

	self assert: (self child lookupPath: '../..') = self root.
	self assert: (self child lookupPath: '../../') = self root.

	self assert: (self structure lookupPath: '../..') = self root.
	self assert: (self structure lookupPath: '../..') = self root