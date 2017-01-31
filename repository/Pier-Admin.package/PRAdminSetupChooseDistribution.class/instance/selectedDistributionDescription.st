magritte descriptions
selectedDistributionDescription
	<magritteDescription>
	^ MASingleOptionDescription new
		options: self distributions;
		accessor: #selectedDistribution;
		label: 'Select template';
		componentClass: PRAdminSetupThumbnailChooser;
		priority: 100;
		cssClass: 'thumbnailChooser';
		beRequired;
		yourself