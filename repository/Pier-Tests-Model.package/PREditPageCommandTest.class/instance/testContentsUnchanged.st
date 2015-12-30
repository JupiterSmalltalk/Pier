tests-contents
testContentsUnchanged
	| document |
	document := self structure document.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure document = document