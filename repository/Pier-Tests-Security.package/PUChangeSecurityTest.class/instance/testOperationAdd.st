tests-operations
testOperationAdd
	self command
		with: true; all: true;
		operator: #add; permissions: self permissions.
	self command execute.

	self assert: ((self command accessor read: self structure)
		includesAllOf: self permissions).
	self assert: ((self command accessor read: self child)
		includesAllOf: self permissions)