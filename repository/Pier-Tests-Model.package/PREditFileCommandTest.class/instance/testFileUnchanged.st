tests-file
testFileUnchanged
	| file |
	file := self structure file.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure file = file