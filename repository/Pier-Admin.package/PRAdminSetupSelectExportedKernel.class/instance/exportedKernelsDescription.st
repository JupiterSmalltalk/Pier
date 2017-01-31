magritte descriptions
exportedKernelsDescription
	<magritteDescription>
	^ MASingleOptionDescription new
		componentClass: PRAdminSetupExportedKernelsSelect;
		options: self exportedKernels;
		accessor: #selectedKernel;
		label: 'Exported kernels';
		beRequired;
		yourself