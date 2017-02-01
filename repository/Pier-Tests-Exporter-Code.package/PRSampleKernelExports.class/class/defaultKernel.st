kernel creation and export
defaultKernel
	| kernel |
	kernel := PRKernel named: 'defaultKernel'.
	PRPierFrame registerAsApplication: 'defaultKernel' kernel: kernel.
	"ensure an environment is defined so browse to /defaultKernel"
	self halt.	
		
	PRKernelCodeExporter exportAsPier3Kernel: 'defaultKernel'.