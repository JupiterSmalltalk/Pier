*pier-tests-security
testWorld
	| parentDecoration childDecoration |
	parentDecoration := self context structure
		securityDecoration.
	parentDecoration
		owner: self adminUser;
		ownerPermissions: PUChangeSecurity permissionInstances;
		group: self adminGroup;
		groupPermissions: PUChangeSecurity permissionInstances;
		otherPermissions: PRAddCommand permissions.
	self context
		setUser: nil.
	PRCurrentContextHolder
		use: self
		during: [ self command execute ].

	childDecoration := self command successAnswer structure
		securityDecoration.
	self assert: childDecoration owner = self adminUser.
	self assert: childDecoration ownerPermissions equalElements: PUChangeSecurity permissionInstances.
	self assert: childDecoration group = self adminGroup.
	self assert: childDecoration groupPermissions equalElements: PUChangeSecurity permissionInstances.
	self assert: childDecoration otherPermissions equalElements: PRAddCommand permissions