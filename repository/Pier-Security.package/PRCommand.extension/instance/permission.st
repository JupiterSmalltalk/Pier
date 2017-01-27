*pier-security
permission
	"The permission required to make the receiver executable in the setup context. ==nil== if no permission is required."

	| permissions |
	permissions := self class permissions.
	^ permissions isEmpty ifFalse: [ permissions anyOne ]