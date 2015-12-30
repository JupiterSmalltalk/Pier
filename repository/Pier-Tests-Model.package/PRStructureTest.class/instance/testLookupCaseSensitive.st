tests-lookup
testLookupCaseSensitive
	| struc |
	struc := self actualInstance 
		name: 'Child';
		title: 'Structure';
		yourself.
	self folder addChild: struc.

	self assert: (self folder lookupPath: 'Child') = struc.
	self assert: (self folder lookupPath: 'CHILD') = self child.
	self assert: (self folder lookupPath: 'Structure') = self structure