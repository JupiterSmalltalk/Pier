tasks
selectExportedKernelComponent
	| selectedExportedKernelClass |
	selectedExportedKernelClass :=  self call: PRAdminSetupSelectExportedKernel new.
	^ selectedExportedKernelClass new