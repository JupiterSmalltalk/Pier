instance creation
exportAsPier3Kernel: kernelOrPierDispatchPath
	^ self new
		setPrototypePRComponentGeneration;
		exportWithPierKernelOrDispatchPath: kernelOrPierDispatchPath;
		yourself