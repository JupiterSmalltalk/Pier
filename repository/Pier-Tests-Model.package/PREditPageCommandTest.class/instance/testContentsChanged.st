tests-contents
testContentsChanged
	| document |
	document := PRPage new descriptionDocument
		fromString: '!foo'.
	self command
		write: document
		using: PRPage new descriptionDocument.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure document = document