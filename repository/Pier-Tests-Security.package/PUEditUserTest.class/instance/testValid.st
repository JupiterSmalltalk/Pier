tests
testValid
	self deny: self context isValid.
	context := self context user: self adminUser.
	self assert: self context isValid.
	context := self context user: self bloggerUser.
	self assert: self context isValid