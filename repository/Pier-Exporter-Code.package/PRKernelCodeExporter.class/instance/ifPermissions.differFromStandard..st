exporting - permissions
ifPermissions: aPermissionSet differFromStandard: aBlock
	((aPermissionSet = self standardPermissions) or: [ aPermissionSet = self rootOwnerPermissions ]) ifFalse: [
		| permissionDifference |
		permissionDifference := (self rootOwnerPermissions difference: aPermissionSet) greaseString.
		aBlock value: permissionDifference ]