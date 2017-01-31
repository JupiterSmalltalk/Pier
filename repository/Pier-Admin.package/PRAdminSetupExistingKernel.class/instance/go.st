running
go
	| selectedKernelPathPair adminInstancePath |
	
	 [ adminInstancePath isNil ] whileTrue: [
		selectedKernelPathPair := self chooseExistingKernel.
		adminInstancePath :=  self adminInstanceAlreadyAssociatedWithKernel: selectedKernelPathPair.
		
		adminInstancePath isNil
			ifTrue: [
				adminInstancePath := self createAdminInstance: selectedKernelPathPair.
				self informInstanceCreatedForPath: adminInstancePath kernel: selectedKernelPathPair ] 
		
			ifFalse: [ 
				(self confirmAdminInstance: adminInstancePath alreadyAssociatedWith: selectedKernelPathPair) 
					ifFalse: [ adminInstancePath := nil ] ] ].
			
	self redirectTo: adminInstancePath