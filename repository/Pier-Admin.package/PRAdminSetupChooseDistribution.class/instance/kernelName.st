accessing
kernelName
	^ kernelName ifNil: [ kernelName :=  self suggestKernelNameFrom: self selectedDistribution ]