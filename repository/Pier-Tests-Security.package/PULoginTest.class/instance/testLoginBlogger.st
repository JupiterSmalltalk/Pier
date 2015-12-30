tests
testLoginBlogger
	self assert: self context user isNil.
	self command
		username: self bloggerUser name;
		password: 'bottom'.
	self
		shouldnt: [ self command execute ]
		raise: PUInvalidLogin.
	self assert: self command user = self bloggerUser.
	self assert: self command successAnswer user = self bloggerUser.
	self assert: self command successAnswer command class = PRViewCommand.
	self assert: self command cancelAnswer user isNil.
	self assert: self command cancelAnswer command class = PRViewCommand.
	self assert: self context user isNil