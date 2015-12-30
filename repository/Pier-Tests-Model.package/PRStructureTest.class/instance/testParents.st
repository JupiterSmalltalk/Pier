tests-accessing
testParents
	self assert: self root parents size = 1.
	self assert: self root parents first = self root.

	self assert: self folder parents size = 2.
	self assert: self folder parents first = self root.
	self assert: self folder parents second = self folder.

	self assert: self child parents size = 3.
	self assert: self child parents first = self root.
	self assert: self child parents second = self folder.
	self assert: self child parents third = self child.

	self assert: self structure parents size = 3.
	self assert: self structure parents first = self root.
	self assert: self structure parents second = self folder.
	self assert: self structure parents third = self structure