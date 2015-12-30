tests
testLoginInvalidPassword
	self assert: self context user isNil.
	self command username: self bloggerUser name.
	self should: [ self command execute ] raise: PUInvalidLogin.
	self assert: self context user isNil