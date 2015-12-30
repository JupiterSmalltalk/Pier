tests
testLoginInvalidUsername
	self assert: self context user isNil.
	self should: [ self command execute ] raise: PUInvalidLogin.
	self assert: self context user isNil