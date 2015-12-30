tests-querying
testFindAncestorIfAbsent
	self assert: (self structure findAncestor: [ :each | each = self structure ] ifAbsent: [ 123 ]) = self structure.
	self assert: (self structure findAncestor: [ :each | each = self folder ]  ifAbsent: [ 123 ]) = self folder.
	self assert: (self structure findAncestor: [ :each | each = self root ] ifAbsent: [ 123 ]) = self root.
	self assert: (self structure findAncestor: [ :each | each = self child ] ifAbsent: [ 123 ]) = 123