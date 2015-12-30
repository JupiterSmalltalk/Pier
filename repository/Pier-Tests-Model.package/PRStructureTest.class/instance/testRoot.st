tests-accessing
testRoot
	self assert: self root root = self root.
	self assert: self folder root = self root.
	self assert: self child root = self root.
	self assert: self structure root = self root