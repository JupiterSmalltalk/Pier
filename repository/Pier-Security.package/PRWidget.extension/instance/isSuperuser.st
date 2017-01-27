*pier-security-testing
isSuperuser
	^ self context user notNil and: [ self context user isSuperuser ]