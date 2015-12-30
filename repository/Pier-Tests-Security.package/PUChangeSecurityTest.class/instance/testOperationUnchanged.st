tests-operations
testOperationUnchanged
	| structurePermission childPermissions |
	structurePermission := (self command accessor read: self structure)
		copy.
	childPermissions := (self command accessor read: self child)
		copy.

	self command
		with: true; all: true;
		operator: nil; permissions: self permissions.
	self command execute.

	self assert: (self command accessor
		read: self structure) equalElements: structurePermission.
	self assert: (self command accessor
		read: self child) equalElements: childPermissions