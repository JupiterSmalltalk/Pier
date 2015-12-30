accessing-permissions
ownerPermissions
	^ ownerPermissions ifNil: [ ownerPermissions := PUChangeSecurity permissionInstances asSet ]