*pier-security-defaults
adminUser
	^ self propertyAt: #adminUser ifAbsentPut: [
		(PUUser named: 'admin')
			addGroup: self adminGroup;
			password: 'pier';
			superuser: true;
			yourself ]