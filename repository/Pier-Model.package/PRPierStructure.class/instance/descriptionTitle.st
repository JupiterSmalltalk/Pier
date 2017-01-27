accessing-description
descriptionTitle
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'title';
		accessor: #title;
		beSearchable;
		priority: 100;
		label: 'Title';
		beRequired;
		beEditable;
		yourself