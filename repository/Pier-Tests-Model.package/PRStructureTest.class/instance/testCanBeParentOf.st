tests-testing
testCanBeParentOf
	PRStructure withAllConcreteClassesDo: [ :each |
		"Should work without throwing an error"
		self structure canBeParentOf: each new ]