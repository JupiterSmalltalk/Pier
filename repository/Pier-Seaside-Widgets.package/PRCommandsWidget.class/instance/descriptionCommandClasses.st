accessing-description
descriptionCommandClasses
	<magritteDescription>
	^ MAMultipleOptionDescription new
		default: self class defaultCommandClasses;
		options: self class defaultCommandClasses;
		componentClass: MAListCompositonComponent;
		reference: MAClassDescription new;
		accessor: #commandClasses;
		label: 'Command Classes';
		priority: 200;
		beOrdered;
		beDistinct;
		beSorted;
		yourself