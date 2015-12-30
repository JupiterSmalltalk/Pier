tests-operations
testOperationSet
	self command
		with: true; all: true;
		operator: #set; permissions: self permissions.
	self command execute.

	self assert: (self command accessor read: self structure) equalElements: self permissions.
	self assert: (self command accessor read: self child) equalElements: self permissions