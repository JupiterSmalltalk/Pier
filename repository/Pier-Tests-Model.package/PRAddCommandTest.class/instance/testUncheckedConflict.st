tests
testUncheckedConflict
	self command execute.	
	self command beUnchecked.
	self command structure enumerator
		do: [ :each | each remove ].	
	self
		shouldnt: [ self command execute ]
		raise: PRConflictingNameError