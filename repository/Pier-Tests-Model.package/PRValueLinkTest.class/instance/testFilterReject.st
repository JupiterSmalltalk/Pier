tests-utilities
testFilterReject
	self instance parameterAt: 'reject' put: 'Page'.
	self assert: (self instance selectAndReject: PRPage new) isNil.
	self assert: (self instance selectAndReject: PRFile new) notNil.	