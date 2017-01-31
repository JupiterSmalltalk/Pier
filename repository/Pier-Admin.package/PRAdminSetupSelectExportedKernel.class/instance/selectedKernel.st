accessing
selectedKernel
	^ selectedKernel ifNil: [ 
		self exportedKernels isEmpty 
			ifTrue: [ nil ]
			ifFalse: [ selectedKernel := self exportedKernels first ] ]