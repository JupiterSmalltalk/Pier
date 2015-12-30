tests-accessing
testParent
	self assert: self root parent isNil.
	self assert: self folder parent = root.
	self assert: self child parent = folder.
	self assert: self structure parent = folder