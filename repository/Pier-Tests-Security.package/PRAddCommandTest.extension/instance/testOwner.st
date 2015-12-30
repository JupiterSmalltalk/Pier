*pier-tests-security
testOwner
	| parentDecoration childDecoration |
	parentDecoration := self context structure
		securityDecoration.
	parentDecoration
		owner: self adminUser;
		ownerPermissions: PRAddCommand permissions;
		group: self bloggerGroup;
		groupPermissions: PUChangeSecurity permissionInstances;
		otherPermissions: #().
	self context
		setUser: self bloggerUser.
	PRCurrentContextHolder
		use: self
		during: [ self command execute ].

	childDecoration := self command successAnswer structure
		securityDecoration.
	self assert: childDecoration owner = self bloggerUser.
	self assert: childDecoration ownerPermissions equalElements: PRAddCommand permissions.
	self assert: childDecoration group = self bloggerGroup.
	self assert: childDecoration groupPermissions equalElements: PUChangeSecurity permissionInstances.
	self assert: childDecoration otherPermissions equalElements: #()