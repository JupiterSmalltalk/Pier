tests-testing
testCanBeChildOf
	PRStructure withAllConcreteClassesDo: [ :each |
		"Should work without throwing an error"
		self structure canBeChildOf: each new ]