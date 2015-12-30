*pier-tests-security
testGroupNamed
	| adminGroup found |
	self
		assert: (self kernel groupNamed: 'admin' ifNone: [self fail]) isNil not
		description: 'Should find admin group by its name'.
	adminGroup := self kernel groupNamed: 'admin' ifNone: [].
	self assert: (adminGroup isKindOf: PUGroup).
	self assert: (adminGroup name = 'admin').
	found := true.
	self kernel groupNamed: 'a group that is not there'
		ifNone: [found := false].
	self deny: found description: 'Should not find a group that is not there'