*pier-model-structure-visiting
visitStructureDescription: aDescription
	self object: (self context structure
		lookupPath: self contents
		ifAbsent: [ self error: 'Invalid path' ])