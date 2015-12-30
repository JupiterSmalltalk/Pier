*pier-security-accessing
user
	^ self propertyAt: #user ifAbsentPut: [ self retrieveUserFromCookie ]