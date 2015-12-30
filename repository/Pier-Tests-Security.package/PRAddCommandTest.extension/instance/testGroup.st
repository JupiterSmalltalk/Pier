*pier-tests-security
testGroup
	| parentDecoration childDecoration |
	parentDecoration := self context structure
		securityDecoration.
	parentDecoration
		owner: self bloggerUser;
		ownerPermissions: PUChangeSecurity permissionInstances;
		group: self adminGroup;
		groupPermissions: PRAddCommand permissions;
		otherPermissions: #().
	self context
		setUser: self bloggerUser.
	PRCurrentContextHolder
		use: self
		during: [ self command execute ].

	childDecoration := self command successAnswer structure
		securityDecoration.
	self assert: childDecoration owner = self bloggerUser.
	self assert: childDecoration ownerPermissions equalElements: PUChangeSecurity permissionInstances.
	self assert: childDecoration group = self adminGroup.
	self assert: childDecoration groupPermissions equalElements: PRAddCommand permissions.
	self assert: childDecoration otherPermissions equalElements: #()