*pier-security-defaults
adminGroup
	^ self propertyAt: #adminGroup ifAbsentPut: [ PUGroup named: 'admin' ]