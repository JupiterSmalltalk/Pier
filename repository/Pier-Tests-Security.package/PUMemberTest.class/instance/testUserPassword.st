tests-user
testUserPassword
	user1 password: 'foo'.
	self deny: user1 password = 'foo'.
	self assert: (user1 validatePassword: 'foo').
	
	user1 password: user1 password.
	self assert: (user1 validatePassword: 'foo')