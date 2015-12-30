tests-answering
testSuccessAnswer
	self assert: self command successAnswer notNil.
	self command successAnswer: self context.
	self deny: self command successAnswer = self context