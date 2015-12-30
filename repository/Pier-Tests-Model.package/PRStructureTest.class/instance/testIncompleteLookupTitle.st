tests-lookup
testIncompleteLookupTitle
	| lookup |
	lookup := self root lookupIncompletePath: '/Folder/zork'.
	self assert: lookup key = self folder.
	self assert: lookup value = 'zork'.
	
	lookup := self root lookupIncompletePath: '/Folder/zork/'.
	self assert: lookup key = self folder.
	self assert: lookup value = 'zork'.

	lookup := self structure lookupIncompletePath: '../Structure/foo/bar'.
	self assert: lookup key = self structure.
	self assert: lookup value = 'foo'.
	
	lookup := self structure lookupIncompletePath: '../Structure/foo/bar/'.
	self assert: lookup key = self structure.
	self assert: lookup value = 'foo'