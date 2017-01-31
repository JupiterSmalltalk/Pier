exporting
exportWithPierKernelOrDispatchPath: kernelOrPierDispatchPath save: aBoolean
	| kernel |
	kernel := kernelOrPierDispatchPath isString 
		ifTrue: [ 
			dispatcherPathName := kernelOrPierDispatchPath.
			self kernelFromDispatcherConfiguration: dispatcherPathName ]
		ifFalse: [ 
			dispatcherPathName := self selectorFromName: kernelOrPierDispatchPath name.
			kernelOrPierDispatchPath ].
	kernel isNil ifTrue: [
		Error signal: 'Not Found, kernel or dispatcher named: ', dispatcherPathName	].
	
	self exportKernel: kernel.
	aBoolean ifTrue: [ self saveExportFor: kernel ]