running
go
	| kernelCreator |
	
	 [ kernelCreator isNil ] whileTrue: [
		kernelCreator := self selectExportedKernelComponent.
		(self ifPresentConfirmRemovalOfApplicationAt: kernelCreator dispatcherPathName) ifFalse: [ kernelCreator := nil ] ].
		
	self createExportedKernel: kernelCreator.
	self queryAdminUICreationFor: kernelCreator kernelName at: kernelCreator dispatcherPathName