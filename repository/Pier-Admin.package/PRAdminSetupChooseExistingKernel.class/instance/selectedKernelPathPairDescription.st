magritte descriptions
selectedKernelPathPairDescription
	<magritteDescription>
	^ MASingleOptionDescription new
		options: self kernelPathsPairs;
		accessor: #selectedKernelPathPair;
		label: 'Select kernel';
		componentClass: MASelectListRowsComponent;
		beRequired;
		yourself