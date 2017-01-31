magritte component
selectKernelComponent
	^ selectKernelComponent ifNil: [ 
		selectKernelComponent := self asComponent
			addDecoration: (TWBSMagritteFormDecoration buttons:  (Array with: #save -> 'Select Existing Kernel'));
			onAnswer: [ :model | self answer: self selectedKernelPathPair ];
			yourself ]