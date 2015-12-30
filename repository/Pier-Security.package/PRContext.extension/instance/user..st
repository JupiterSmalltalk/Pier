*pier-security-navigation
user: anUser
	"Create a copy of the current context with the current user replaced by anUser."

	^ self copy
		setUser: anUser;
		yourself