accessing
kernelPathsPairs
	^ kernelPathsPairs ifNil: [ 
		kernelPathsPairs := PRAdminKernelPathPair kernelPathPairs select: [ :each |
			| possibleAdminPath |
			possibleAdminPath := each path, '-admin'.
			(WADispatcher default handlerAt: possibleAdminPath ifAbsent: [ nil ]) isNil ] ]