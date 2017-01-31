accessing
selectedKernelPathPair
	^ selectedKernelPathPair
		ifNil: [ 
			self kernelPathsPairs isEmpty
				ifFalse: [ selectedKernelPathPair := self kernelPathsPairs first ] ]