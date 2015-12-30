tests-smoke
testConveniance
	self assert: (self persistency history) isCollection.
	self assert: (self persistency historyFor: self kernel root) isCollection