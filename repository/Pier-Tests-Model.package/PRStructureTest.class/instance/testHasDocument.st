tests-testing
testHasDocument
	self assert: self root hasDocument.
	self assert: self folder hasDocument.
	self assert: self child hasDocument