tests
testPassword
	self context setUser: self adminUser.
	self command write: 'foo' using: PUUser new descriptionPassword.
	self command execute.
	self assert: (self adminUser validatePassword: 'foo')