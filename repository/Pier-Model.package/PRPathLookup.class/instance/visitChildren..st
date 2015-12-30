visiting-decorations
visitChildren: anObject
	"This method does the lookup of the next structure by checking for a child with that name, since this value is hashed it can be done efficiently. If the lookup by name fails, it tries to match the title case-insensitive by iterating through the children. If this fails as well, the message ==#childNotFound:== is sent."

	anObject
		at: self pathElement
		ifPresent: [ :value | ^ self visit: value ].
	anObject children do: [ :each |
		((self pathElement sameAs: each name)
			or: [ self pathElement sameAs: each title ])
				ifTrue: [ ^ self visit: each ] ].
	self childNotFound: anObject decorated