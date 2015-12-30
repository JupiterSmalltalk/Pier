tests-lookup
testIncompleteLookupName
	| lookup |
	lookup := self root lookupIncompletePath: '/folder/zork'.
	self assert: lookup key = self folder.
	self assert: lookup value = 'zork'.
	
	lookup := self root lookupIncompletePath: '/folder/zork/'.
	self assert: lookup key = self folder.
	self assert: lookup value = 'zork'.

	lookup := self structure lookupIncompletePath: '../structure/foo/bar'.
	self assert: lookup key = self structure.
	self assert: lookup value = 'foo'.
	
	lookup := self structure lookupIncompletePath: '../structure/foo/bar/'.
	self assert: lookup key = self structure.
	self assert: lookup value = 'foo'