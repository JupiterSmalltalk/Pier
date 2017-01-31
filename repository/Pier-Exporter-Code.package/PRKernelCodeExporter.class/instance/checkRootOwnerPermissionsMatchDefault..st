exporting - permissions
checkRootOwnerPermissionsMatchDefault: rootComponent
	rootOwnerPermissions :=  rootComponent securityDecoration ownerPermissions.
	self standardPermissions =  rootOwnerPermissions ifFalse: [
		Transcript 
			show: 'Root permissions are not the same as the standard permissions. Difference:'; cr; 
			show: (self standardPermissions difference: rootOwnerPermissions) greaseString; cr;
			show: 'Will compare each structures permissions against root permissions as well as standard permissions and only write permissions set if there is a difference' ]