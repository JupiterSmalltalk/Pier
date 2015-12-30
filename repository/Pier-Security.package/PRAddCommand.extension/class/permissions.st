*pier-security
permissions
	^ PRStructure withAllConcreteClasses
		collect: [ :class | PUAddPermission on: self structure: class ]