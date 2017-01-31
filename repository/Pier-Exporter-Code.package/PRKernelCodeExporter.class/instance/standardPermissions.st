exporting - permissions
standardPermissions
	^ standardPermissions ifNil: [
		standardPermissions :=  PUSecurity new ownerPermissions ]