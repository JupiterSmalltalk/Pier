tests-querying
testFindAncestor
	self assert: (self structure findAncestor: [ :each | each = self structure ]) = self structure.
	self assert: (self structure findAncestor: [ :each | each = self folder ]) = self folder.
	self assert: (self structure findAncestor: [ :each | each = self root ]) = self root.
	self assert: (self structure findAncestor: [ :each | each = self child ]) isNil