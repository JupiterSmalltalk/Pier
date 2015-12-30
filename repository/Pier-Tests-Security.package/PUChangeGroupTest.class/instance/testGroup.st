tests
testGroup
	self command
		with: true; all: true;
		group: self bloggerGroup.
	self command execute.

	self assert: self structure group = self bloggerGroup.
	self assert: self child group = self bloggerGroup