magritte component
selectExportedKernelComponent
	^ selectExportedKernelComponent ifNil: [ 
		selectExportedKernelComponent := self asComponent
			addDecoration: 
				((TWBSMagritteFormDecoration buttons:  (Array with: #save -> 'Recreate kernel'))
					formCss: 'form-horizontal';
					legend: 'Select an exported kernel';
					yourself);
			onAnswer: [ :model | self answer: model selectedKernel ];
			yourself ]