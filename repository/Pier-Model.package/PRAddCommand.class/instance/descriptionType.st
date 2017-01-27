accessing-description
descriptionType
	<magritteDescription>
	
	^ MASingleOptionDescription new
		options: self structureClasses;
		reference: MAClassDescription new;
		parameterName: 'type';
		default: PRPage;
		accessor: #type;
		label: 'Type';
		priority: 110;
		beRequired;
		beSorted;
		yourself