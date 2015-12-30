tests
testingLogout
	self assert: self context user = self bloggerUser.
	self command execute.
	self assert: self command successAnswer user isNil.
	self assert: self command successAnswer command class = PRViewCommand.
	self assert: self context user = self bloggerUser