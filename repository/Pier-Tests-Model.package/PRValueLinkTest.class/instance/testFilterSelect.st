tests-utilities
testFilterSelect
	self instance parameterAt: 'select' put: 'Page'.
	self assert: (self instance selectAndReject: PRPage new) notNil.
	self assert: (self instance selectAndReject: PRFile new) isNil