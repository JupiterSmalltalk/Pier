tests-outgoing
testEnumerableDetect
	self assert: (root enumerator all detect: [ :each | each name = 'child2']) = child2.
	self should: [root enumerator detect: [ : each | each name = 'child2']] raise: GRObject defaultErrorClass.
	self shouldnt: [root enumerator detect: [ : each | each name = 'child2'] ifNone: [nil]] raise: GRObject defaultErrorClass