tests
testSimple
	self
		should: [ self command execute ]
		raise: Error