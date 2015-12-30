*pier-security-private
structureClassesSecurity
	| theContext |
	theContext := self context.
	^ self structureClasses select: [ :class |
		theContext structure securityDecoration
			hasPermission: (PUAddPermission
				on: self class structure: class)
			for: theContext user ]