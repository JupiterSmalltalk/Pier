tests-accessing
testContext
	self assert: self command context notNil.
	context := self context command: self command.
	self assert: self command context = self context