tasks
createSiteAt: dispatcherName forDistribution: selectedDistribution onKernel: kernel
	| distribution result |
	distribution := selectedDistribution new.
	result := distribution showCustomizeUIOn: self thenAddRootToKernel: kernel.
	result notNil ifTrue: [
		self registerApplicationAtPath: dispatcherName kernel: kernel ].
	
	^ result notNil