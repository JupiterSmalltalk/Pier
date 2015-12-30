tests
testSmoke
	| context |
	context := self contextInstance.
	self instance pragmas do: [ :pragma |
		self instance reference: 'value:' , pragma arguments first.
		self assert: self instance title = pragma arguments first.
		"Should work without throwing an error"
		self instance valueIn: context ]