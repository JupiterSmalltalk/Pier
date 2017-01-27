*pier-security
permissions
	^ PRPierStructure withAllConcreteClasses
		collect: [ :class | PUAddPermission on: self structure: class ]