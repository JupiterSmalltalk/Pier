accessing-description
descriptionFilter
	<magritteDescription>
	^ MAMultipleOptionDescription new
		default: PRStructure withAllConcreteClasses;
		options: PRStructure withAllConcreteClasses;
		comment: 'The types of structures not to display.';
		componentClass: MAMultiselectListComponent;
		reference: MAClassDescription new;
		default: self class defaultFilter;
		accessor: #filter;
		label: 'Filter';
		priority: 210;
		beSorted;
		yourself