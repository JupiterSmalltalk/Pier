tests
testInformation
	self context setUser: self adminUser.
	self command write: 'Lukas' using: PUUser new descriptionFirstName.
	self command write: 'Renggli' using: PUUser new descriptionLastName.
	self command write: 'admin@piercms.com' using: PUUser new descriptionEmail.
	self command execute.
	self assert: self adminUser firstName = 'Lukas'.
	self assert: self adminUser lastName = 'Renggli'.
	self assert: self adminUser email = 'admin@piercms.com'.