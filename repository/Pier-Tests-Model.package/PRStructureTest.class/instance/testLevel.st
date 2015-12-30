tests-accessing
testLevel
	self assert: self root level = 1.
	self assert: self folder level = 2.
	self assert: self child level = 3.
	self assert: self structure level = 3