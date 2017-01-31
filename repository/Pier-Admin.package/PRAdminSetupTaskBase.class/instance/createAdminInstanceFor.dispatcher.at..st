admin ui tasks
createAdminInstanceFor: kernelName dispatcher: dispatcherName at: adminInstancePath
	| kernelPathPair kernel |
	
	kernel := PRKernel instanceNamed: kernelName.
	kernelPathPair := PRAdminKernelPathPair kernel: kernel path: dispatcherName.
	
	PRAdminLogin registerAt: adminInstancePath administering: kernelPathPair