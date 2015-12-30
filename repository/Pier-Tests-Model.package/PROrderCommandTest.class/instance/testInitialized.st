tests
testInitialized
	self children
		with: self command structures
		do: [ :a :b | self assert: a = b ]