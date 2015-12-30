tests-accessing
testPersistency
	| persistency1 persistency2 |
	self kernel persistency: (persistency1 := PRHistoryPersistency new).
	self assert: self kernel persistency = persistency1.
	self assert: self kernel = persistency1 kernel.

	self kernel persistency: (persistency2 := PRNullPersistency new).
	self assert: persistency1 kernel isNil.
	self assert: self kernel persistency = persistency2.
	self assert: self kernel = persistency2 kernel.
		
	self kernel persistency: nil.
	self assert: persistency2 kernel isNil.
	self assert: self kernel persistency kernel = self kernel