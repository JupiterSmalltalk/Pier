tests
testDocument
	self structure document: PRDocument new.
	self assert: self structure document = PRDocument new.
	self assert: self structure contents = ''.
	
	structure := self actualClass new.
	self assert: structure document = structure defaultDocument