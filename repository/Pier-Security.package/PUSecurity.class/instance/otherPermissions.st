accessing-permissions
otherPermissions
	^ otherPermissions ifNil: [ otherPermissions := Set withAll: PRViewCommand permissions ]