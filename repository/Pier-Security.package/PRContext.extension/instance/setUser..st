*pier-security-initialization
setUser: aUser
	self propertyAt: #user put: aUser.
	self rememberUserInCookie: aUser