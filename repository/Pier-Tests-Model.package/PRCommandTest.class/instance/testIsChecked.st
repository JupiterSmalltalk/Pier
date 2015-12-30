tests-testing
testIsChecked
	self assert: self command isChecked.

	self command beUnchecked.
	self deny: self command isChecked.

	self command beChecked.
	self assert: self command isChecked