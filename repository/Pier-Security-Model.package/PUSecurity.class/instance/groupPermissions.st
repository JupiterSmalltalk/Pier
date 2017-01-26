accessing-permissions
groupPermissions
	^ groupPermissions ifNil: [ groupPermissions := self ownerPermissions copy ]