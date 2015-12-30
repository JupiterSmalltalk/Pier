accessing-description
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'name';
		accessor: #name;
		label: 'Name';
		priority: 100;
		beRequired;
		yourself