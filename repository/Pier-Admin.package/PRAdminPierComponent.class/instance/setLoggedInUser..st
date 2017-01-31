instance creation
setLoggedInUser: aUser
	self context: (self context user: aUser)