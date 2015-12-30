tests
testOwner
	self command
		with: true; all: true;
		owner: self bloggerUser.
	self command execute.

	self assert: self structure owner = self bloggerUser.
	self assert: self child owner = self bloggerUser