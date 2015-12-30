*pier-tests-security
testUserNamed
	| adminUser found |
	self
		assert: (self kernel userNamed: 'admin' ifNone: [self fail]) isNil not
		description: 'Should find admin group by its name'.
	adminUser := self kernel userNamed: 'admin' ifNone: [].
	self assert: (adminUser isKindOf: PUUser).
	self assert: (adminUser name = 'admin').
	found := true.
	self kernel userNamed: 'a user that is not there' ifNone: [found := false].
	self deny: found description: 'Should not find a user that is not there'