tests-title
testTitleChanged
	| title |
	self command
		write: (title := 'foo')
		using: PRPage new descriptionTitle.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure title = title