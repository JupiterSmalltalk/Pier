tests
testAddChild
	| child |
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: (self structure childrenDecoration
		includes: self command name).

	child := self structure childrenDecoration
		at: self command name.
	self assert: child name = self command name.
	self assert: child species = self command type