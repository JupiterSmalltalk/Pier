tests-title
testTitleUnchanged
	| title |
	title := self structure title.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure title = title