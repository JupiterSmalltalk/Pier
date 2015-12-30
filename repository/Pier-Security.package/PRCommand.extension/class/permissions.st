*pier-security
permissions
	"Answer a collection of permissions as defined by the receiver."

	^ Array with: (PUPermission on: self)