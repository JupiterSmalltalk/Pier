instance creation
exportAsPier1or2Kernel: kernelOrPierDispatchPath
	^ self new
		setOldPRComponentGeneration;
		exportWithPierKernelOrDispatchPath: kernelOrPierDispatchPath;
		yourself