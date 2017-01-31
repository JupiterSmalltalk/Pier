accessing
configuredInstancesKernelPathsPairs
	^ configuredInstancesKernelPathsPairs ifNil: [ 
		configuredInstancesKernelPathsPairs := PRAdminKernelPathPair kernelPathPairs select: [ :each |
			| possibleAdminPath |
			possibleAdminPath := each path, '-admin'.
			(WADispatcher default handlerAt: possibleAdminPath ifAbsent: [ nil ]) notNil ] ]