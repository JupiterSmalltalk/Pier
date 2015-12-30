tests-answering
testCancelAnswer
	self assert: self command cancelAnswer notNil.
	self command cancelAnswer: self context.
	self deny: self command cancelAnswer = self context