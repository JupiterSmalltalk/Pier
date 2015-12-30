tests
testLoginAdmin
	self assert: self context user isNil.
	self command
		username: self adminUser name;
		password: 'pier'.
	self
		shouldnt: [ self command execute ]
		raise: PUInvalidLogin.
	self assert: self command user = self adminUser.
	self assert: self command successAnswer user = self adminUser.
	self assert: self command successAnswer command class = PRViewCommand.
	self assert: self command cancelAnswer user isNil.
	self assert: self command cancelAnswer command class = PRViewCommand.
	self assert: self context user isNil