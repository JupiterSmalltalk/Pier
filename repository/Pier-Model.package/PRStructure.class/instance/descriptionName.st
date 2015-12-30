accessing-description
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'name';
		accessor: #name;
		label: 'Name';
		beSearchable;
		beRequired;
		yourself